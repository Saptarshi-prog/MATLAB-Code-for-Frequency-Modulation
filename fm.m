function frequency_modulation = fm

%take user input of the values

Kf = input('enter the value of Kf: ');
Am = input('Enter the value of message signal amplitude: ');
Ac = input('Enter the value of carrier amplitude: ');
fm = input('Enter the value of message signal frequency: ');
fc = input('Enter the value of carrier frequency: ');

modulation_index = (Kf*Am)/fm;      %beta for fm

Tfm = 1/fm;   %timeperiod for message signal
Tfc = 1/fc;    %time period for carrier

t1 = 0:Tfm/999:6*Tfm;


carrier_wave = Ac*cos(2*pi*fc*t1);   %plotting the carrier wave
subplot(3,1,1)
plot(t1, carrier_wave, 'r');
grid();
title('carrier signal');

message_wave = Am*cos(2*pi*fm*t1);    %plotting the message signal.
subplot(3,1,2)
plot(t1, message_wave, 'b');
grid();
title('Message Signal');

%plotting the frequency modulated wave-

frequency_modulation = Ac*cos(2*pi*fc*t1+modulation_index.*sin(2*pi*fm*t1));
subplot(3,1,3)
plot(t1, frequency_modulation, 'g');
grid();
title('Frequency Modulated Wave');

end


