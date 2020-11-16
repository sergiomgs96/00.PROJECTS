%
% Short Period Stability Augmentation System (SAS)
%
clear all
%
Asp=[-1.47961 -49.4425;1 -1.16668];
Bsp=[-22.4739;-0.121741];
Csp=eye(2);
Dsp=zeros(2,1);
%
[NUMOLTF,DENOLTF]=ss2tf(Asp,Bsp,Csp,Dsp,1);
%
OLTFq2de=tf(NUMOLTF(1,:),DENOLTF);
OLTFalfa2de=tf(NUMOLTF(2,:),DENOLTF);
%
% Open Loop Short Period Poles
%
kk=eig(Asp);
damp(kk)
%
% Close Loop - Feedbacks
% 
% Angle of Attack Feedback
%
Ka=5;
Asp2=[-1.47961 -49.4425-22.4739*Ka;1 -1.16668-0.121741*Ka];
kka=eig(Asp2);
damp(kka)
%
[NUMCLTFAF,DENCLTFAF]=ss2tf(Asp2,Bsp,Csp,Dsp,1);
%
CLTFAFq2de=tf(NUMCLTFAF(1,:),DENCLTFAF);
CLTFAFalfa2de=tf(NUMCLTFAF(2,:),DENCLTFAF);
%
% Pitch Rate Feedback
%
Kq=0.1;
Asp3=[-1.47961-22.4739*Kq -49.4425;1-0.121741*Kq -1.16668];
kkq=eig(Asp3);
damp(kkq)
%
[NUMCLTFQF,DENCLTFQF]=ss2tf(Asp3,Bsp,Csp,Dsp,1);
%
CLTFQFq2de=tf(NUMCLTFQF(1,:),DENCLTFQF);
CLTFQFalfa2de=tf(NUMCLTFQF(2,:),DENCLTFQF);
%
% Multiple Gains Feedback
%
Ka=0.5;
Kq=0.5;
Asp4=[-1.47961-22.4739*Kq -49.4425-22.4739*Ka;1-0.121741*Kq -1.16668-0.121741*Ka];
kkaq=eig(Asp4);
damp(kkaq)
%
[NUMCLTFMF,DENCLTFMF]=ss2tf(Asp4,Bsp,Csp,Dsp,1);
%
CLTFMFq2de=tf(NUMCLTFMF(1,:),DENCLTFMF);
CLTFMFalfa2de=tf(NUMCLTFMF(2,:),DENCLTFMF);
%
%
% Pole Placement
%
Ksp=place(Asp,Bsp,roots([1 2*0.6*3 3^2]));
%
% Closed Loop
%
Acl=Asp-Bsp*Ksp;
%
% Alternative Formulation 
%
sys=tf(1,[1 -2*real(kk(1)) real(kk(1))^2+imag(kk(1))^2])*tf(1, [1 2*0.0033 0.0672^2+0.0033^2]);
%
[A,B,C,D]=ssdata(sys);
%
ev=eig(A);
%
% Damp Short Period, but leave the Phugoid where it is
%
Plist=[roots([1 2*.6*3 3^2])' ev([3 4],1)'];
K1=place(A,B(:,1),Plist);
%


