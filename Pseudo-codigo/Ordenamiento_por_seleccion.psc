Funcion IntercambiarValores ( arreglo Por Referencia, pos1, pos2 )
	Definir temporal como numerico
	temporal <- arreglo[pos1]
	arreglo[pos1] <- arreglo[pos2]
	arreglo[pos2] <- temporal
Fin Funcion

Funcion OrdenamientoPorSeleccion (arreglo Por Referencia, Nelementos)
	Definir i, j, min como numericos
	Para i<-0 hasta Nelementos-1 Hacer
		min <- i
		Para j<-i hasta Nelementos-1 Hacer
			Si arreglo[j] < arreglo[min] Entonces
				min <- j
			FinSi
			
		FinPara
		IntercambiarValores(arreglo, i, min)
	FinPara
Fin Funcion

Funcion mostrarArreglo(arreglo Por Referencia, Nelementos)
	Para i <- 0 hasta Nelementos-1 hacer
		Escribir Sin Saltar arreglo[i], " ";
	FinPara
	Escribir "";
Fin Funcion

Algoritmo Ordenamiento_PorSeleccion
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
