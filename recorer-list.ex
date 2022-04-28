list = [1, 2, 3, 4, 5, 6, 7, 8]

#for
for x <- list, do: x * x

#recorre la lista
Enum.each(list, fn(s) -> IO.puts(s) end)

#recorre la lista
Enum.filter(list, fn(x) -> IO.puts(x) end)

#lista de palabras claves
for {_key, val} <- [one: 1, two: 2, theree: 3], do: val

#lista de mapas
for {k,v} <- %{"a" => "A", "b" => "B"}, do: {k, v}

#recorre la cadena y regresa una lista
for <<c <- "hello">>, do: <<c>>
