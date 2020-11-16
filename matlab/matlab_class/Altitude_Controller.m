%
% Altitude Controller Design
%
clear all
%
% Initialization of the system parameters
%
Xu=-1.982e3;
Xw=4.025e3;
Zu=-2.595e4;
Zw=-9.030e4;
Zq=-4.524e5;
Zwd=1.909e3;
Mu=1.593e4;
Mw=-1.563e5;
Mq=-1.521e7;
Mwd=-1.702e4;
%
g=9.81;
theta0=0;
S=511;
U0=235.9;
Iyy=0.449e8;
m=2.83176e6/g;
cbar=8.324;
rho=0.3045;
%
Xdp=0.3*m*g;
Zdp=0;
Mdp=0;
Xde=-3.818e-6*(1/2*rho*U0^2*S);
Zde=-0.3648*(1/2*rho*U0^2*S);
Mde=-1.444*(1/2*rho*U0^2*S*cbar);
%
% Full Longitudinal Model 
% 
% x=[u w q theta h]
% u=[de;dt]
%
sen_u=1;
sen_w=2;
sen_q=3;
sen_t=4;
sen_h=5;
sen_de=6;
sen_dt=7;
%
act_e=1;
act_t=2;
%
% dot h = U0 (theta - alpha) = U0 theta - w
%
A=[Xu/m Xw/m 0 -g*cos(theta0) 0;[Zu Zw Zq+m*U0 -m*g*sin(theta0)]/(m-Zwd) 0;
[Mu+Zu*Mwd/(m-Zwd) Mw+Zw*Mwd/(m-Zwd) Mq+(Zq+m*U0)*Mwd/(m-Zwd) ...
     -m*g*sin(theta0)*Mwd/(m-Zwd) 0]/Iyy;
[ 0 0 1 0 0];[0 -1 0 U0 0]];
%
B=[Xde/m Xdp/m;Zde/(m-Zwd) Zdp/(m-Zwd);(Mde+Zde*Mwd/(m-Zwd))/Iyy ...
  (Mdp+Zdp*Mwd/(m-Zwd))/Iyy;0 0;0 0];
%
C=[eye(5);zeros(2,5)];
%
D=[zeros(5,2);eye(2)]; % the last 2 outputs are the controls
%
% Creation of the Longitudinal Model
%
syslong=ss(A,B,C,D);
%
% Actuator Dynamics
%
% Elevator
%
tau_e=0.25;
JNe=1;
JDe=[tau_e 1];
syse=tf(JNe,JDe);
%
% Throttle
%
tau_t=3.5;
JNt=1;
JDt=[tau_t 1];
syst=tf(JNt,JDt);
%
% Append both actuator systems
%
sysd=append(syse,syst);
%
% Addition of the actuators to the system model. (Actuator states also added to the overall model)
%
syslong2=series(sysd,syslong);
[A,B,C,D]=ssdata(syslong2);
%
% q and theta Inner Loops
%
% u=kq*q+Kth*theta + de_c
%
K_th=1;
K_q=1.95*K_th;
%
figure(1);
clf;
sgrid([0.5 0.707]',1);
rlocus(tf(-[K_q K_th],1)*tf(syslong2(sen_t,act_e)));
r_th=rlocus(tf(-[K_q K_th],1)*tf(syslong2(sen_t,act_e)),K_th);
hold on
plot(r_th+eps*1i,'bd','MarkerFace','b');axis([-3,1,-3,3]);
hold off
axis([-3 0.1 -3 3])
title('Root Locus with q and \theta feedback to \delta_e');
%
% Close inner q and theta Loops
%
K_th=0.65; %Gain for optimal damping (0.7)
K_q=1.95*K_th; 
%
syscl=feedback(syslong2,[K_q K_th],act_e,[sen_q sen_t],1);
%
eig(syscl);
[Acl,Bcl,Ccl,Dcl]=ssdata(syscl);
%
% Engine Loop
%
% Mostly the Phugoid --> Design on top of the Short Period
%
% system with q/th loop feedback
%
figure(2);
clf;
%
% interested in vel output and engine input
%
sys_u=syscl(sen_u,act_t);
%
Kun=[1/0.2857 1]; % comp zero on plant pole
Kud=[1/(0.2857*5) 1];
[Au,Bu,Cu,Du]=tf2ss(Kun,Kud);
%
K_u=0.1;
rlocus(sys_u*tf(Kun,Kud));
rr_u=rlocus(sys_u*tf(Kun,Kud),K_u);
hold on;
plot(rr_u+eps*1i,'bd','MarkerFace','b');
hold off;
%
na=size(Acl,1);
Aclt=[Acl Bcl(:,act_t)*Cu;zeros(1,na)  Au];
Bclt=[[Bcl(:,act_e);0] [Bcl(:,act_t)*Du;Bu]];
Cclt=[Ccl zeros(size(Ccl,1),1)];
Dclt=zeros(size(Ccl,1),2);
%
figure(3);
clf;
axis([-0.5 0.05,-0.4,0.4]);
sgrid([0.5 0.707]',0.05);
hold on;
rlocus(Aclt,Bclt(:,act_t),Cclt(sen_u,:),Dclt(sen_u,act_t));
axis([-2 0.05,-2,2]);
r_u=rlocus(Aclt,Bclt(:,act_t),Cclt(sen_u,:),Dclt(sen_u,act_t),K_u)';
hold on;
plot(r_u+eps*1i,'bd','MarkerFace','b');
hold off
title('Root Locus with u feedback to \delta_t')
%
Acl2=Aclt-Bclt(:,act_t)*K_u*Cclt(sen_u,:);
Bcl2=Bclt;
Ccl2=Cclt;
Dcl2=Dclt;
sysclt=ss(Acl2,Bcl2,Ccl2,Dcl2);
%
% Finally Close Loop on altitude h
%
% de_c = kh*(h_c-h)
%
% Design lead by canceling troubling plant pole 
% zero located p*8
%
tt=eig(sysclt);
[~,ii]=min(abs(tt+0.165));
Khn=[1/abs(tt(ii)) 1];
Khd=[1/(8*abs(tt(ii))) 1];
K_h=-1*0.00116;
%
Gc_eng=tf(Khn,Khd);
Loopt=series(append(Gc_eng,tf(1,1)),sysclt);  
%
figure(4);
clf;
sgrid([0.5 0.707]',0.1:.1:1);
hold on;
rlocus(sign(K_h)*Loopt(sen_h,act_e));
axis([-1 0.1, -2 2])
r_h=rlocus(Loopt(sen_h,act_e),K_h);
hold on;
plot(r_h+eps*1i,'bd','MarkerFace','b');
hold off;
title('Root Locus with h feedback to \delta_e command')
%
syscl3=feedback(series(append(tf(K_h,1),tf(1,1)),Loopt),1,act_e,sen_h,-1);
%
% Let´s try using the throttle actuator to control altitude
% 
K_hu=0.025;
tt=eig(sysclt);[ee,ii]=min(abs(tt+0.165));
Khnu=[1/abs(tt(ii)) 1];
Khdu=[1/(5*abs(tt(ii))) 1];
Gc_engu=tf(Khnu,Khdu);
Loopt=series(append(tf(1,1),Gc_engu),sysclt);    
%
figure(5);
clf;
axis([-0.6 0.1,-0.5,0.5]);
sgrid([0.5 0.707]',0.05);
hold on;
rlocus(sign(K_hu)*Loopt(sen_h,act_t));
axis([-1 0.1,-2,2])
r_hu=rlocus(Loopt(sen_h,act_t),K_hu);
hold on;
plot(r_hu+eps*1i,'bd','MarkerFace','b');
hold off
title('Root Locus with h feedback to \delta_t command')
%
syscl4=feedback(series(append(tf(1,1),tf(K_hu,1)),Loopt),1,act_t,sen_h,-1);
%
% Comparing both Controllers with elevator and throttle
%
% Elevator Feedback
%
t=0:0.01:18;
[ystep,t]=initial(syscl3,[0 0 0 0 90 0 0 0 0],t);
figure(6);
clf;
orient tall;
subplot(211)
ll=1:length(t);
U=ystep(:,sen_u);
TH=ystep(:,sen_t);
H=ystep(:,sen_h);
DELe=ystep(:,sen_de);
DELt=ystep(:,sen_dt);
plot(t(ll),H(ll),t(ll),5*U(ll),t(ll),TH(ll)*180/pi);
title('Initial condition response to 90m altitude error using elevator feedback')
legend('H','5*U','\theta deg');
grid
subplot(212)
plot(t(ll),DELe(ll)*180/pi,t(ll),20*DELt(ll));
legend('\delta_e input','20*\delta_t input');
grid
axis([0 18 -20 20])
ylabel('Commands (degs)')
title('Initial condition response to 90m altitude error using elevator feedback')
%
% Throttle Feedback
%
t=0:0.01:18;
[ystep,t]=initial(syscl4,[0 0 0 0 90 0 0 0 0],t);
figure(7);
clf;
orient tall;
subplot(211)
ll=1:length(t);
U=ystep(:,sen_u);
TH=ystep(:,sen_t);
H=ystep(:,sen_h);
DELe=ystep(:,sen_de);
DELt=ystep(:,sen_dt);
plot(t(ll),H(ll),t(ll),U(ll),t(ll),TH(ll)*180/pi);
title('Initial condition response to 90m altitude error using throttle feedback')
legend('H','U','\theta deg');
grid
subplot(212)
plot(t(ll),DELe(ll)*180/pi,t(ll),DELt(ll));
legend('\delta_e input','\delta_t input');
grid
axis([0 18 -20 20])
ylabel('Command inputs (degs)')
title('Initial condition response to 90m altitude error using throttle feedback')
%
% Path to follow with Elevator Feedback
%
figure(8);
clf
Hmax=1500;
Hc=[zeros(10,1);Hmax/100*[0:1:100]';Hmax*ones(50,1);Hmax/100*[100:-1:0]';zeros(50,1)];
T=0:length(Hc)-1;
[Yh,T]=lsim(syscl3(:,1),Hc,T);
U=Yh(:,sen_u);
W=Yh(:,sen_w);
TH=Yh(:,sen_t);
H=Yh(:,sen_h);
DELe=Yh(:,sen_de);
DELt=Yh(:,sen_dt);
plot(T,Hc,T,H,'--');
axis([0 300 -100 1600])
legend('h_c','h')
title('Altitude Controller: Elevator Feedback')
ylabel('height')
xlabel('time')
%
figure(9);
clf;
subplot(211)
ll=1:length(T);
plot(T(ll),U(ll),T(ll),W(ll)/U0*180/pi,T(ll),TH(ll)*180/pi);
title('Linear Response: Elevator Feedback')
legend('U','\alpha deg','\theta deg');
grid
axis([0 300 -5 5])
subplot(212)
plot(T(ll),DELe(ll)*180/pi,T(ll),10*DELt(ll));
title('Linear Response: Elevator Feedback')
axis([0 300 -3 3])
legend('\delta_e','10*\delta_t');
grid
%
% Path to follow with Throttle Feedback
%
figure(10);
clf;
Hmax=1500;
Hc=[zeros(10,1);Hmax/100*[0:1:100]';Hmax*ones(50,1);Hmax/100*[100:-1:0]';zeros(50,1)];
T=0:length(Hc)-1;
[Yh,T]=lsim(syscl4(:,2),Hc,T);
U=Yh(:,sen_u);
W=Yh(:,sen_w);
q=Yh(:,sen_q);
TH=Yh(:,sen_t);
H=Yh(:,sen_h);
DELe=Yh(:,sen_de);
DELt=Yh(:,sen_dt);
plot(T,Hc,T,H,'--');
axis([0 300 -100 1600])
legend('h_c','h')
title('Altitude Controller: Throttle Feedback')
ylabel('height')
xlabel('time')
%
figure(10);
clf;
subplot(211)
ll=1:length(T);
plot(T(ll),U(ll),T(ll),5*W(ll)/U0*180/pi,T(ll),5*TH(ll)*180/pi);
title('Linear Response: Throttle Feedback')
legend('U','5*\alpha deg','5*\theta deg');
grid
axis([0 300 -40 40])
subplot(212)
plot(T(ll),DELe(ll)*180/pi,T(ll),DELt(ll));
title('Linear Response: Throttle Feedback')
legend('\delta_e','\delta_t');
grid
axis([0 300 -2 2])
%