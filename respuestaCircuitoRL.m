%Respuesta del circuito RC
pkg load control
%--------------------------------------------------------------------------

%Definimos las constantes

R = 100;
L = 0.1;
V = 12;

%-------------------------------------------------------------------------

%Definimos la planta

num = [L 0];
num2 = [1];
den = [L R];

Vl = tf(num,den)
Il = tf(num2,den)

%Vemaos la respuesta al escalon

subplot(2,1,1)
step(V*Vl)
grid on
title('Respuesta en tension a un escalon de tension de entrada')
ylabel('tension [V]')
%axis([0 30 0 12.5])

subplot(2,1,2)
step(V*Il,'r')
grid on
title('Respuesta en corriente a un escalon de tension de entrada')
ylabel('corriente [A]')
%axis([0 30 0 1.22])