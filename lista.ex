#lista
[1, 2, 3, 4, 5, 6]

["a", "b", "c", "d", "e", "f"]

list = [3.14, :pie, "Apple"]

#listas de tuplas
[{6,5,6,4, 5}, {0,9,6, 4}]

#listas de listas
[[4,5,6], [0, 9, 8]]

#tamano de la lista
length [1, 2, 3, 4, 5, 6]

# Agregar elemento al inicio de la lista
["π" | list]

# Agregar elemento al final de la lista
list ++ ["Cherry"]

#concatenación de listas
[1, 2] ++ [3, 4, 5]

#elimina elemntos de la lista
[1, 2, 3, 4, 5] -- [2, 5]

List.delete_at(["a", "b", "c", "d"], 1)

#sacar elemento de la posision 3 de la lista
lista_alphabet = ["a", "b", "c", "d", "e", "f"]
Enum.at(list_alphabet, 3)

#sacar elementos de la lista haciendo uso de Pattern matching
list_elements = [1, 3, 4, 8, 40]
[x | _] = list_elements
x

#cabeza y cola de una lista
#cabeza
hd [3.14, :pie, "Apple"]

#cola
tl [3.14, :pie, "Apple"]

#se almacena la cabeza y la cola de la lista
[head | tail] = [3.14, :pie, "Apple"]

head

tail
