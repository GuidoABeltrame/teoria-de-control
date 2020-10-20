%Error Control proporcional tanque

pkg load control

clear all
close all
hold off
clc

%-------------------------------------------------------------------------------
%Definimos las constantes

kc = 1;
kr = 1;
ka = 1;
A = 1;
Rh = 1.5;
Ch = 4;
Ro = 1.1;

%-------------------------------------------------------------------------------
%Definimos la planta

num = [Rh];
den = [Ch*Rh Ro];
h = tf(num, den)

h_rea = feedback(A*ka*h, kr)  % Calcula la funcion de lazo cerrado
e = 1/(1+A*h)                 % Calcula la transferencia del error

aux = tf([1],[1]);
%-------------------------------------------------------------------------------
% Vemos las respuestas al escalon

subplot(2,1,1)
step(5*h_rea)
grid on
title('Respuesta del sistema realimentado a un escalon de 5m')
ylabel('Altura (m)')
axis([0 15 0 6])

hold on
step(5*aux, 'r--')
axis([0 15 0 6])

subplot(2,1,2)
step(5*e, 'g')
grid on
title('Respuesta del error a un escalon de 5m')
ylabel('Altura (m)')
axis([0 15 0 5])