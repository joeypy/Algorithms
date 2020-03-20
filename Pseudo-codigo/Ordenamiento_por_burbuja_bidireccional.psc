Funcion IntercambiarValores ( arreglo Por Referencia, pos1, pos2 )
	Definir temporal como numerico
	temporal <- arreglo[pos1]
	arreglo[pos1] <- arreglo[pos2]
	arreglo[pos2] <- temporal
Fin Funcion

Funcion OrdenamientoPorBurbuja (arreglo Por Referencia, Nelementos)
	Definir i, j como numericos
	Definir intercambiados como logico
	Repetir
		intercambiados = Falso
		Para i <- 1 Hasta Nelementos-1 Hacer
			Si arreglo[i-1] > arreglo[i] Entonces
				IntercambiarValores(arreglo, i-1, i)
				intercambiados = Verdadero
			FinSi
		FinPara
		Para i <- Nelementos-1 Hasta 1 Hacer
			Si arreglo[i] < arreglo[i-1] Entonces
				IntercambiarValores(arreglo, i-1, i)
				intercambiados = Verdadero
			FinSi
		FinPara
	Hasta Que (intercambiados = Falso)
Fin Funcion

Funcion mostrarArreglo(arreglo Por Referencia, Nelementos)
	Para i <- 0 hasta Nelementos-1 hacer
		Escribir Sin Saltar arreglo[i], " ";
	FinPara
	Escribir "";
Fin Funcion

Algoritmo Ordenamiento_PorBurbuja
	Definir arreglo, Nelementos como numericos
	Nelementos <- 10
	Dimension arreglo[Nelementos]
	Para i <- 0 hasta Nelementos-1 hacer
		arreglo[i] <- azar(100);
	FinPara
	mostrarArreglo(arreglo, Nelementos)
	OrdenamientoPorBurbuja(arreglo, Nelementos)
	mostrarArreglo(arreglo, Nelementos)
FinAlgoritmo
