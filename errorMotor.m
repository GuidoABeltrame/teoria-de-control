%Lugar de raices del motor de corriente continua tomando la posicion como salida
pkg load control
clear all
close all
hold off
clc
%--------------------------------------------------------------------------

%Definimos las constantes
J = 0.8;
B = 0.3;
R = 10;
k = 2.7;
L = 2;
kr = 1;
kc = 1;

%--------------------------------------------------------------------------

num = [k];
%den = conv([J B 0], [L R]) + [0 0 k² 0];
den = conv([J B 0], [L R]);
pos = tf(num, den)

rlocus(pos*kr)  % Recibe G*H