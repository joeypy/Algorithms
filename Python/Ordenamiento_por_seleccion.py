import random

def cambiarValores(array, pos1, pos2):
    temporal = array[pos1]
    array[pos1] = array[pos2]
    array[pos2] = temporal

def ordenamiento(array, size):
    for i in range(size):
        min = i
        for j in range(i, size):
            if array[j] < array[min]:
                min = j
        cambiarValores(array, i, min)

if __name__ == "__main__":
    array = []
    size = 10
    for i in range(size):
        array.append(random.randint(0, 100))
    print(array)
    ordenamiento(array, size)
    print(array)