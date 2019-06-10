% Diferencia entre predicados y cláusulas:
% PREDICADO puede ser un hecho con su respectiva aridad:
% cliente/3

%CLAUSULAS sería la cantidad de hechos que representan al predicado
% 6 clausulas del predicado cliente

%cliente(nombre, ciudad, calificación_credito)
cliente(claudia, nochistlan, 5).
cliente(deysi, jerez, 4).
cliente(luis, jerez, 2).
cliente(luis_gerardo, ermita_guadalupe, 3).
cliente(gerardo, jerez, 4).
cliente(david, zacatecas, 2).

%articulo(clave, descripcion, limite_existencias)
articulo(a1, computadora, 10).
articulo(a2, raton_alambrico, 10).
articulo(a3, proyector, 10).
articulo(a4, adaptador_vga, 10).
articulo(a5, raton_inalambrico, 10).
articulo(a6, memoria_usb, 10).
articulo(a7, disco_externo, 8).  %Cambie 10 por 8 para hacer diferencia en la prueba

%inventario(clave, existencias)
inventario(a1, 32).
inventario(a2, 4).
inventario(a3, 5).
inventario(a4, 64).
inventario(a5, 12).
inventario(a6, 10).
inventario(a7, 89).

%%---------------------
% Pregunta 1
ciudad(X,Y):- cliente(X, Y, _).

% Pregunta 2
calificacion(X,Y):- cliente(X,_,Y).

% Pregunta 3
ciudadcalificacion(X, Y, Z):- cliente(X, Y, Z).

% Pregunta 4
limiteexistencia(X, Y):- articulo(_, X, Y).

% Pregunta 5
numarticulo(X, Y):- articulo(X, Y, _).

% Pregunta 6
nivelinventario(X, Y):- inventario(X, Y).

% Pregunta 7
cantidad(X, Y):- articulo(Z, X, _) , inventario(Z, Y).