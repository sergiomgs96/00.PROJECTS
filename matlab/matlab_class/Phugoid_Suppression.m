%
% Phugoid Suppression
%
% OPEN LOOP
%
% Transfer function of the aircraft, pitch angle theta vs elevator angle
%
syslong=tf(-[1.158 0.3545 0.003873],[1 0.750468 0.935494 9.463025e-3 4.195875e-3]);
%
Open_Loop_Poles=eig(syslong);
%
figure
rlocus (-syslong);
grid;
title('Open Loop Root Locus');
axis([-0.4 0 -2 2]);
%
% Let´s zoom to see the Phugoid poles
%
figure
rlocus (-syslong);
grid;
title('Phugoid Poles - Open Loop Root Locus');
axis([-0.1 0 -0.25 0.25]);
%
figure
step(-syslong);
grid;
title('Open Loop Step Response');
ylabel('Theta (rad)');
xlabel('Time(s)');
axis([0 1000 -4 6]);
%
% CLOSED LOOP
%
% PID Design
%
% Proportional Compensator P
%
P_compensator=tf(-0.5);
%
% Positive unitary feedback system with the proportional compensator (P_compensator) 
% connected in series with the original system (syslong) 
%
syslongP=feedback(series(P_compensator,syslong),1);
%
eig(syslongP);
%
figure
step(syslongP);
grid;
title('Closed Loop Proportional Compensator Step Response');
ylabel('Theta (rad)');
xlabel('Time(s)');
axis([0 200 0 2]);
%
% Proportional/Integral (PI) Compensator
%
PI_compensator=tf(-0.5*[1 1],[1 0]);
%
% Positive unitary feedback system with the proportional/integral compensator (PI_compensator
% connected in series with the original system (syslong)
%
syslongPI=feedback(series(PI_compensator,syslong),1);
%
figure
step(syslongPI);
grid;
title('Closed Loop PI Compensator Step Response ');
ylabel('Theta (rad)');
xlabel('Time(s)');
axis([0 200 0 2]);
%
% Proportional/Integral/Derivative (PID) Compensator
%
PID_compensator=tf(-0.5*[1 1 1],[1 0]);
%
% Positive unitary feedback system with the proportional/integral/derivative compensator (PID_compensator
% connected in series with the original system (syslong)
%
syslongPID=feedback(series(PID_compensator,syslong),1);
%
figure
step(syslongPID);
grid;
title('Closed Loop PID Compensator Step Response ');
ylabel('Theta (rad)');
xlabel('Time(s)');
axis([0 200 0 2]);
%
% There is also the option to use the GUI sisotool to design this PID
%
% Analysis Plot: Plot 1 Plot Type --> step
% Close Loop r to y
%
% P (C=-0.5 & negative unitary feedback) Close-Loop r to y
% PI (integrator + real zero with C=-0.5 & negative unitary feedback) Close-Loop r to y
% PID (integrator + complex zero with C=-0.5 & negative unitary feedback) Close-Loop r to y
%
%
% sisotool(syslong)
%
