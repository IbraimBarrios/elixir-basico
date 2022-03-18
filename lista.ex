#lista
list = [3.14, :pie, "Apple"]

# Agregar elemento al inicio de la lista
["π" | list]

# Agregar elemento al final de la lista
list ++ ["Cherry"]

#concatenación de listas
[1, 2] ++ [3, 4, 5]


#cabeza y cola de una lista
#cabeza
hd [3.14, :pie, "Apple"]

#cola
tl [3.14, :pie, "Apple"]

#se almacena la cabeza y la cola de la lista
[head | tail] = [3.14, :pie, "Apple"]

head

tail
