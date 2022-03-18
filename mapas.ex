#mapa
%{foo: "bar", hello: "world"}

#mapa almacenado en una variable.
fred = %{
  name: "Fred",
  age: "95",
  favorite_color: "Taupe"
  }

  fred.name

  #actualiza el mapa
  %{fred | favorite_color: : "Blue"}
