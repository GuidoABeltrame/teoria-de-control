%Respuesta del circuito RLC ( LC en paralelo con R en serie)
pkg load control
%--------------------------------------------------------------------------

%Definimos las constantes

R = 1;
L = 0.5;
C = 2;
V = 12;

%-------------------------------------------------------------------------

%Definimos la planta

num = [C*L 0 1];
den = [C*L*R L R];

Il = tf(num,den)

%Vemaos la respuesta al escalon

subplot(2,1,1)
step(V*Il)
grid on
title('Respuesta en corriente a un escalon de tension de entrada')
ylabel('corriente [A]')
