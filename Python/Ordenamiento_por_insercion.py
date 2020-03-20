import random

def intercambiarValores(array, pos1, pos2):
    temporal = array[pos1]
    array[pos1] = array[pos2]
    array[pos2] = temporal

def ordenamiento(array, size):
    for i in range(size):
        j = i
        while j > 0 and array[j-1] > array[j]:
            intercambiarValores(array, j, j-1)
            j = j - 1

if __name__ == "__main__":
    array = []
    size = 10
    for i in range(size):
        array.append(random.randint(0, 100))
    print(array)
    ordenamiento(array, size)
    print(array)