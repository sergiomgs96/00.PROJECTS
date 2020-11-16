%
% Longitudinal Modes of a Jet Transport
%
clear all
%
% Initialization of the system parameters. Longitudinal aircraft equations
%
% Dimensional Derivatives (English Units)
%
Xu=-1.358e2;
Xw=2.758e2;
%
Zu=-1.78e3;
Zw=-6.188e3;
Zq=-1.017e5;
Zwd=1.308e2;
%
Mu=3.581e3;
Mw=-3.515e4;
Mq=-1.122e7;
Mwd=-3.826e3;
%
% Aircraft & relevant data [English Units]
%
g=32.2; % [ft/s2]
theta0=0;
S=5500; % [ft2]
U0=774; % [fps]
Iyy=0.331e8; % [slug ft2]
m=636636/g; % [slug]
cbar=27.31; % [ft]
rho=0.0005909; % [slug/ft3]
%
%
% Phugoid Approximation (Ph)
%
%
% Transfer functions Outputs [u gamma] Inputs [de dp]
%
Xdp=0.3*m*g;
Zdp=0;
Mdp=0;
%
Cxde=-3.818e-6;
Czde=-0.3648;
Cmde=-1.444;
%
Xde=Cxde*(1/2*rho*U0^2*S);
Zde=Czde*(1/2*rho*U0^2*S);
Mde=Cmde*(1/2*rho*U0^2*S*cbar);
%
a1=U0*(Mde*Xw/m-Mw*Xde/m)-g*Mde;
a0=g*(Mde*Zw/m-Mw*Zde/m);
%
A1=-U0*Mw;
B1=g*Mu+U0/m*(Xu*Mw-Mu*Xw);
C1=g/m*(Zu*Mw-Mu*Zw);
%
GudePh=tf([a1 a0],[A1 B1 C1]);
GudpPh=tf(-Xdp/m*U0*Mw*[1 0],[A1 B1 C1]);
GgdpPh=tf(Xdp/m*(Mw*Zu/m-Mu*Zw/m),[A1 B1 C1]);
GgdePh=tf(Xde/m*(Mw*Zu/m-Mu*Zw/m),[A1 B1 C1]);
%
% Root Locus Gude (Phugoid Approximation)
%
figure(1)
rlocus(GudePh)
grid
title('Root Locus Gedu - Phugoid Approximation')
axis([-1 0 -0.6 0.6])
%
% Step Response to throttle input
%
k1=0.005;
k2=3*k1;
%
numJ=[k2 k1];
denJ=1;
J=tf(numJ,denJ);
%
% Close Loop Transfer Functions for the Phugoid Approximation
%
GCLPhdp2u=GudpPh/(1+GudePh*J);
[Y2,T2]=step(GCLPhdp2u);
figure(2)
plot(T2,-Y2/6)
grid
title('Speed Response to Throttle Input - Phugoid Approximation')
axis([0 60 -10 5])
%
% Full Longitudinal Model 
% 
% x=[u w q theta];
%
A=[Xu/m Xw/m 0 -g*cos(theta0) ;[Zu Zw Zq+m*U0 -m*g*sin(theta0)]/(m-Zwd); 
[Mu+Zu*Mwd/(m-Zwd) Mw+Zw*Mwd/(m-Zwd) Mq+(Zq+m*U0)*Mwd/(m-Zwd) -m*g*sin(theta0)*Mwd/(m-Zwd) ]/Iyy;
[ 0 0 1 0 ]]; 
%
% u=[de dt];
%
B=[Xde/m Xdp/m;Zde/(m-Zwd) Zdp/(m-Zwd);(Mde+Zde*Mwd/(m-Zwd))/Iyy (Mdp+Zdp*Mwd/(m-Zwd))/Iyy;0 0];
%
C=eye(4);
%
D=zeros(4,2);
%
% Transfer functions Outputs [u w q theta] Inputs [de dp]
%
[NUMde,DENde] = ss2tf(A,B,C,D,1);
[NUMdp,DENdp] = ss2tf(A,B,C,D,2);
%
Gude=tf(NUMde(1,2:5),DENde);
Gudp=tf(NUMdp(1,2:5),DENdp);
Gthetade=tf(NUMde(4,3:5),DENde);
Gthetadp=tf(NUMdp(4,4:5),DENdp);
Gwde=tf(NUMde(2,2:5),DENde);
Gwdp=tf(NUMdp(2,3:5),DENdp);
Gqde=tf(NUMde(3,2:5),DENde);
Gqdp=tf(NUMdp(3,3:5),DENdp);
Ggde=Gthetade-Gwde/U0;
Ggdp=Gthetadp-Gwdp/U0;
%
% Close Loop Transfer Functions for the Exact Equations
%
GCLdp2u=Gudp/(1+Gude*J);
[Y3,T3]=step(GCLdp2u);
figure(3)
plot(T3,-Y3/6)
grid
title('Speed Response to Throttle Input - Exact Equations')
axis([0 60 -10 5])
%
GCLdp2g=Ggdp-Ggde*J*GCLdp2u;
[Y4,T4]=step(GCLdp2g,120);
figure(4)
plot(T4,-Y4/6)
grid
title('Gamma Response to Throttle Input - Exact equations')
axis([0 120 -0.1 0])
%
