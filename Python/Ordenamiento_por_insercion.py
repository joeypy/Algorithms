# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).

from random import randint

# En python no hay forma de elegir como pasar una variable a una
# funcion (por referencia o por valor). Las variables "inmutables"
# (str, int, float, bool) se pasan siempre por copia mientras que
# las demas (listas, objetos, etc.) se pasan siempre por referencia.
# Esto coincide con el comportamiento por defecto en pseint, pero
# cuando utiliza las palabras clave "Por Referencia" para
# alterarlo la traducción no es correcta.

def intercambiarvalores(arreglo, pos1, pos2):
	temporal = float()
	temporal = arreglo[pos1]
	arreglo[pos1] = arreglo[pos2]
	arreglo[pos2] = temporal
	mostrararreglo(arreglo,10)

def ordenamientoporseleccion(arreglo, nelementos):
	i = float()
	j = float()
	for i in range(nelementos):
		print(i)
		j = i
		while j>0 and arreglo[j-1]>arreglo[j]:
			intercambiarvalores(arreglo,j,j-1)
			j = j-1

def mostrararreglo(arreglo, nelementos):
	for i in range(nelementos):
		print(arreglo[i]," ", end="")
	print("")

if __name__ == '__main__':
	arreglo = float()
	nelementos = float()
	nelementos = 10
	arreglo = [int() for ind0 in range(nelementos)]
	for i in range(nelementos):
		arreglo[i] = randint(0,99)
	mostrararreglo(arreglo,nelementos)
	ordenamientoporseleccion(arreglo,nelementos)
	mostrararreglo(arreglo,nelementos)

