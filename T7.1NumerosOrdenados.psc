Funcion numDesAscDsc(numDesorden, numAscendente, numDescendente)
    Escribir "Desorden:    " Sin Saltar;
    Para j = 1 Hasta 10 Con Paso 1 Hacer
        numDesorden[j] = Aleatorio(1, 10);
        numAscendente[j] = numDesorden[j];
        numDescendente[j] = numDesorden[j];
        Escribir " | ",numDesorden[j], Sin Saltar;
    FinPara
FinFuncion

Funcion ordenAscendente(numAscendente)
    Escribir "Ascendente:  " Sin Saltar;
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Para j = 1 Hasta 9 Con Paso 1 Hacer
            Si numAscendente[j] > numAscendente[j+1] Entonces
                temp = numAscendente[j];
                numAscendente[j] = numAscendente[j+1];
                numAscendente[j+1] = temp;
            FinSi
        FinPara
    FinPara
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Escribir " | ", numAscendente[i], Sin Saltar;
    FinPara
FinFuncion

Funcion ordenDescendente(numDescendente)
    Escribir "Descendente: " Sin Saltar;
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Para j = 1 Hasta 9 Con Paso 1 Hacer
            Si numDescendente[j] < numDescendente[j+1] Entonces
                temp = numDescendente[j];
                numDescendente[j] = numDescendente[j+1];
                numDescendente[j+1] = temp;
            FinSi
        FinPara
    FinPara
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Escribir " | ", numDescendente[i] Sin Saltar;
    FinPara
FinFuncion

Algoritmo NumerosOrdenados
    Dimension numDesorden[10], numAscendente[10], numDescendente[10];
	Escribir "============================================================";
	Escribir "Lista de numeros aleatorios";
	Escribir "============================================================";
    numDesAscDsc(numDesorden, numAscendente, numDescendente);
    Escribir "";
    ordenAscendente(numAscendente);
    Escribir "";
    ordenDescendente(numDescendente);
	Escribir "";
	Escribir "============================================================";
FinAlgoritmo
