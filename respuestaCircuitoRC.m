%Respuesta del circuito RC
pkg load control
%--------------------------------------------------------------------------

%Definimos las constantes

R = 10;
C = 0.5;
V = 12;

%-------------------------------------------------------------------------

%Definimos la planta

num = [1];
num2 = [C 0];
den = [R*C 1];

Vc = tf(num,den)
Ic = tf(num2,den)

%Vemaos la respuesta al escalon

subplot(2,1,1)
step(V*Vc)
grid on
title('Respuesta en tension a un escalon de tension de entrada')
ylabel('tension [V]')
axis([0 30 0 12.5])

subplot(2,1,2)
step(V*Ic,'r')
grid on
title('Respuesta en corriente a un escalon de tension de entrada')
ylabel('corriente [A]')
axis([0 30 0 1.22])

