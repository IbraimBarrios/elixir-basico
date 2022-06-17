#fn

#funcion anonima

add = fn (a, b) -> (a + b) end
add.(3, 4)

square = fn n -> n * n end
square.(8)

#funcion anonima con varias clausulas
negate = fn
  true -> false
  false -> true
end

negate.(true)

#pasar una funcion anonima a otras funciones
defmodule Calculon do
  def operar(func) do
    func.(5, 9)
  end
end

IO.puts(Calculon.operar(fn a, b -> a + b end))

#capturar funciones
#se puede capturar funciones de modulos publico y pasar las como si fueran funciones
length = &String.length/1
length.("world")

value = &Kernel.+/2
value.(1, 2)

# prueba
