# Pin ^

#Realiza una asignacion cuando el lado izquierdo de la coincidencia incluye una variable.
x = 1

{x, ^x} = {2, 1}

x

#operador pin en las claves de los mapas
%{^key => value} = %{"Hello" => "World"}

#operador pin en una funcion

greet = fn
  (^greeting, name) -> "Hola #{name}"
  (greeting, name) -> "#{greeting}, #{name}"
end

greet.("Hola", "Ibra")
