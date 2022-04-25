#recore la lista
Enum.each(["one", "two", "there"], fn(s) -> IO.puts(s) end)

#divide la lista en pequeños grupos
Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)


Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)

#map
Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)

#max
Enum.max([5, 3, 0, -1])

#mix
Enum.min([5, 3, 0, -1])

#filtra
Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)

#ordena
Enum.sort([:foo, "bar", Enum, -1, 4])

Enum.sort([5, 6, 1, 3, -1, 4])

#con funcion de ordenacon
Enum.sort([%{:count => 4}, %{:count => 1}], fn(x, y) -> x[:count] > y[:count] end)

#sin funcion de ordenacion
Enum.sort([%{:count => 4}, %{:count => 1}])
