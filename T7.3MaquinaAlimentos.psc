Algoritmo MaquinaAlimentos
	Definir separador Como Caracter;
	separador = "========================================";
	a <- 270;
	b <- 340;
	c <- 390;
	Escribir separador;
	Escribir "   MAQUINA DE ALLIMENTOS";
	Escribir separador;
	Escribir "     1. Producto A  --  $", a;
	Escribir "     2. Producto B  --  $", b;
	Escribir "     3. Producto C  --  $", c;
	Escribir separador;
	Escribir "Escoja un producto";
	Leer opcion;
	Limpiar Pantalla
	Segun opcion hacer
		1:
			Escribir separador;
			Escribir "Ingrese el total de $", a;
			Escribir separador;
			Escribir "Ingrese la suma del pago con monedas del siguiente valor";
			Escribir "  $10  |  $50  |  $100";
			Escribir separador;
			dinero(a);
		2:
			Escribir separador;
			Escribir "Ingrese el total de $", b;
			Escribir separador;
			Escribir "Ingrese la suma del pago con monedas del siguiente valor";
			Escribir "  $10  |  $50  |  $100";
			Escribir separador;
			dinero(b);
		3:
			Escribir separador;
			Escribir "Ingrese el total de $", c;
			Escribir separador;
			Escribir "Ingrese la suma del pago con monedas del siguiente valor";
			Escribir "  $10  |  $50  |  $100";
			Escribir separador;
			dinero(c);
	FinSegun
FinAlgoritmo

Funcion dinero(i)
	separador = "========================================";
	Mientras moneda <= i Hacer
		Leer valMoneda;
		si valMoneda = 10 | valMoneda = 50 | valMoneda = 100 Entonces
			moneda = moneda + valMoneda;
		SiNo
			Escribir "El valor no es valido";
		FinSi
	FinMientras
	cambio = moneda - i;
	Mientras cambio > 0 Hacer
		si cambio >= 50 Entonces
			cambio = cambio - 50
			temp = temp + 50
		FinSi
		si cambio < 50 Entonces
			cambio = cambio - 10
			temp = temp + 10
		FinSi
	FinMientras
	Limpiar Pantalla
	Escribir separador;
	Escribir "Su cambio: $", temp;
	n50 = n50 + (temp / 50);
	n10 = n10 + (temp - (50 * trunc(n50))) / 10;
	si temp < 50 Entonces 	
		Escribir trunc(n10), " de $10";
	SiNo
		Escribir trunc(n50), " de $50 y ", trunc(n10), " de $10";
	FinSi
	Escribir separador;
FinFuncion
	