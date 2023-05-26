%Limpieza de pantalla
clear all
close all
clc

%Calculamos las matrices de transformación homogénea
H0=SE3;
H1=SE3(rotz(pi), [0 0 0]);
H2=SE3(rotx(0), [0 -2 0]);
H3=SE3(rotx(0), [0 -3 0]);
H4=SE3(rotx(0), [0 0 5]);
H5=SE3(rotx(0), [-4 0 0]);

H20= H1*H2;
H30= H20*H3;
H40= H30*H4;
H50= H40*H5; %Matriz de transformación homogenea global de 3 a 0 

plot3(0, 0, 0);
axis([-1 15 -1 15 -1 15]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 4 -1 6 -1 2])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 4 -1 6 -1 2])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H1, H20,'rgb','axis', [-1 4 -1 6 -1 2])
% %Realizamos una animación para la siguiente trama
pause;
tranimate(H20, H30,'rgb','axis', [-1 4 -1 6 -1 2])

pause;
tranimate(H30, H40,'rgb','axis', [-1 4 -1 6 -1 2])

pause;
tranimate(H40, H50,'rgb','axis', [-1 4 -1 6 -1 2])

disp(H50)