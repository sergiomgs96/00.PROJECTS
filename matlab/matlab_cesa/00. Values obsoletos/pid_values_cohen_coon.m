%% PID VALUES
x_max = 1
x_min = -1

% Cohen Coon method was used to tune PID gains. td=0.01 y tau=0.04.
% Proportional gain was manually setted up in order to improve cohen coon response.
td=0.01
tau=0.04
iX= 5
iY= 200
gp = iY/iX

Kc=1.35/gp*(tau/td + 0.185)
Ti=2.5*td*((tau+0.185*td)/(tau+0.611*td))
Td=0.37*td*(tau/(tau+0.185*td))

Kp = Kc
Ki = Kc/Ti
Kd = Kc*Td


Kb = 1
%% Motor DC %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
La = 0.002 % H
Ra = 0.1 % ohm
Kt = 1.125 % N.m/A
J_eje = 0.002 % N.m
J_carga = 0.01% N.m
J = J_eje + J_carga % N.m
B = 0.0002 % N.m / (rad/s)
Ke = 0.025 % V / (rad/s)
Td = 0
V_nom = 28 %V
w_nom = 1120 %rad/s
V_max = 30 %V
w_max = 1200 %rad/s
