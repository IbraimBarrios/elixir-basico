#mapa
%{foo: "bar", hello: "world"}

%{name. "ibra", age. 25, email: "barrios.party@gmail.com"}

#Nota: en los mapas no importa la posicion.

#mapa almacenado en una variable.
fred = %{
  name: "Fred",
  age: "95",
  favorite_color: "Taupe"
  }

#saca un valor del mapa
fred.name

  #actualiza el mapa
  %{fred | favorite_color: : "Blue"}
