Funcion IntercambiarValores ( arreglo Por Referencia, pos1, pos2 )
	Definir temporal como numerico
	temporal <- arreglo[pos1]
	arreglo[pos1] <- arreglo[pos2]
	arreglo[pos2] <- temporal
	mostrarArreglo(arreglo, 10)
Fin Funcion

Funcion OrdenamientoPorInsercion (arreglo Por Referencia, Nelementos)
	Definir i, j como numericos
	Para i <-0 Hasta Nelementos -1 Hacer
		j <- i
		Escribir j
		Mientras j>0 Y arreglo[j-1] > arreglo[j] Hacer
			IntercambiarValores(arreglo, j, j-1)
			j <- j - 1
			Escribir j
		FinMientras
	FinPara
Fin Funcion

Funcion mostrarArreglo(arreglo Por Referencia, Nelementos)
	Para i <- 0 hasta Nelementos-1 hacer
		Escribir Sin Saltar arreglo[i], " ";
	FinPara
	Escribir "";
Fin Funcion

Algoritmo Ordenamiento_por_Insercion
	Definir arreglo, Nelementos como numericos
	Nelementos <- 10
	Dimension arreglo[Nelementos]
	Para i <- 0 hasta Nelementos-1 hacer
		arreglo[i] <- azar(100);
	FinPara
	mostrarArreglo(arreglo, Nelementos)
	OrdenamientoPorSeleccion(arreglo, Nelementos)
	mostrarArreglo(arreglo, Nelementos)
FinAlgoritmo
