%% General used constants
rpm2rads = 60/2/pi

%% PID VALUES
%Saturation values
out_max = 1 % Unused when "saturation off" mode is activated on mask. It is the maximum value the PID will output
out_min = -1 % Unused when "saturation off" mode is activated on mask. It is the minimum value the PID will output

%Gain values
Kp = 1 % Proportional gain. Its contribution is proportional to the error input
Ki = 0 % Integral gain. Its contribution is proportional to the error slope. (Predicts the next error value and reduces it)
Kd = 0 % Derivative gain. Its contribution is proportional to the accumulated error along time. (Has memory of the error and reduces it)
Kb = 0 % Anti wind-up gain. Unused when "saturation off" mode is activated on mask. Default 0. Used for anti wind-up system. Its contribution is proportional to the difference between the saturated value of the output (pid_out_unit) and the non saturated value (no_satur)


%% Motor DC MODEL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

duty_command = 0.5472 % 0 to 1 value
motor_load = 251.26 %mN*m
motor_load_inertia = 0.00001 %kg*m^2

% Controlled PWM voltage source
PWM_frequency = 12000 %Hz - PWM signal frequency. This value (12.000Hz) is used for the Cleansky 2 flap-tab project.
duty_input_voltage_0 = 0 % input voltage for 0% duty cycle (Default)
duty_input_voltage_100 = 1 % input voltage for 100% duty cycle (Default)
V_duty_output = 1.2 %Voltage amplitude output of PWM voltage source. Must be greater than V_enable in H-Bridge 
PWM_delay = 0 %seconds. PWM signal generation delay
PWM_pulse_width_offset = 0 % Seconds. Stablish a fixed pulse width. A positive value acts to lengthen the pulse by a fixed amount. A negative value acts to shorten the pulse.
PWM_minimum_pulse_width = 0 %Seconds.

%H-Bridge
V_enable = V_duty_output - 0.4 %Volts, must be lower than V_duty_output. Is the voltage required to open H_bridge.
PWM_signal_amplitude = 5 %Volts, only used on Average Mode h-Bridge, Unused. Still setted to 5V default due to block requirements. Unused.
REV_V = 0.5 %Voltage value threshold of REV port. Voltage value that reverse voltage provided to DCmotor
BRK_V = 2.5 %Voltage value threshold of BRK port.
output_V = 28 %% It is the amplitude of the PWM voltage applied to the motor windings. This voltage comes from the A/C DC BusBars.
bridge_resistance = 0.1 % Ohm. Set to default
diode_resistance = 0.1 %Ohm. Set to default

%DC_motor
armature_inductance = 0.000072 %H, also known as terminal inductance.
no_load_speed = 5950 %rpm
% rated_speed = 5690 %rpm Unused. Only used in rated speed model parametrization 
% rated_load = 200 %W. Output mechanical power in rated operation. Only
% used in rated load model parametrization
rated_DC_V_supply = 24 %V. Voltage of design of the DC_motor. It defines motor parameters
rotor_inertia = 536 %g*cm^2
stall_torque = 8920 %mNm. Stall torque is the torque produced by a mechanical device whose output rotational speed is zero, this is produced because of the effect of an external force such us jamming state.
rotor_damping = 0.5e-5 %N*m/(rad/s). This value is not clear. used default value.
max_speed = 9500 %RPM. Maximum speed achieved at maximum power and no load.Defines motor parameters.

%Measurement subsystem
fundamental_frequency = 100 % Hz Sampling frequency of the "Mean" block. It is recomended to use 10x input frequency. If an step signal is used as input, then use 100 Hz.


