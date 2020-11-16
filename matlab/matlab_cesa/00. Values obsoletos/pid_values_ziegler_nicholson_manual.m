%% PID VALUES
x_max = 1
x_min = -1

% Ziegler Nichols method was used to tune PID gains. T1=0.01 y T2=0.055.
% Proportional gain was manually setted up in order to improve Ziegler
% Nichols response.
T1=0.01
T2=0.055
iX= 3
iY= 120
K0= (iX*T2) / (iY*T1)

%Kp = 1.2*K0 = 0.165
%Ki = 0.6*K0/T1 = 8.25
%Kd = 0.6*K0*T1 = 0.000825

Kp = 0.95
Ki = 17.5
Kd = 0.03
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
