%% PID VALUES
x_max = 1
x_min = -1
%Metodo manual. Tiene error en el estacionario
Kp = 8
Ki = 8.5
Kd = 8.25e-4
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
