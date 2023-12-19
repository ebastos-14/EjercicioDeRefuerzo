/// Establecer valor de dolar a los N dias
Funcion valDolar(numDias, numDolar)
	Definir tempDolar Como Real;
	Definir separador Como Caracter;
	separador = "========================================";
	Limpiar Pantalla
	Escribir separador;
	Escribir "Ingrese el valor del dolar para los ", numDias, " dias";
	Escribir separador;
	Para i = 1 Hasta numDias Con Paso 1 Hacer
		Escribir "Dia ", i, " =" Sin Saltar;
		Leer tempDolar;
		numDolar[i] = tempDolar;
	FinPara
	Escribir separador;
FinFuncion

/// Establecer el alza entre los N dias
Funcion valAzar(numDias, numDolar, numAlza)
	Para i = 1 Hasta numDias - 1 Con Paso 1 Hacer
		numAlza[1, i] = numDolar[i+1] - numDolar[i];
		numAlza[2, i] = i;
	FinPara
FinFuncion

/// Establece el valor del alza
Funcion orden(numDias, numAlza)
	Para i = 1 Hasta numDias Con Paso 1 Hacer
		Para j = 1 Hasta numDias - 1 Con Paso 1 Hacer
			si numAlza[1, j] < numAlza[1, j+1] Entonces
				numTemp = numAlza[1, j];
				numAlza[1, j] = numAlza[1, j+1];
				numAlza[1, j+1] = numTemp;
				posTemp = numAlza[2, j];
				numAlza[2, j] = numAlza[2, j+1];
				numAlza[2, j+1] = posTemp;
			FinSi
		FinPara;
	FinPara;
	Escribir "El valor mayor del alza en el dolar fue: ", numAlza[1,1];
	si numAlza[1, 1] == 0 Entonces
		Escribir "No hubo alzas en el dolar";
	FinSi
FinFuncion

Algoritmo AlzaDolar
	Definir separador Como Caracter;
	separador = "========================================";
	Limpiar Pantalla
	Escribir separador;
	Escribir "Ingrese la cantidad de dias a registrar";
	Escribir separador;
	Leer numDias;
	Dimension numDolar[numDias], numAlza[2, numDias];
	valDolar(numDias, numDolar);
	valAzar(numDias, numDolar, numAlza);
	orden(numDias, numAlza);
FinAlgoritmo
	