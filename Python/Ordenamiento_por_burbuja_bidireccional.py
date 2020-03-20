import random

def intercambiarValores(array, pos1, pos2):
    temporal = array[pos1]
    array[pos1] = array[pos2]
    array[pos2] = temporal

def ordenamiento(array, size):
	while True:
		intercambiados = False
		for i in range(1, size):
			if array[i] < array[i-1]:
				intercambiarValores(array, i, i-1)
				intercambiados = True
        for i in range(size-1, 2):
            if array[i] < array[i-1]:
			    intercambiarValores(array, i, i-1)
			    intercambiados = True
		if intercambiados == False: break

if __name__ == "__main__":
    array = []
    size = 10
    for i in range(size):
        array.append(random.randint(0, 100))
    print(array)
    ordenamiento(array, size)
    print(array)