#Funciones anonimas
sum = fn (a, b) -> a + b end

sum.(2, 3)

#atajos
sum = &(&1 + &2)

sum.(2, 3)

#coincidencia de patrones
handle_result = fn
  {:ok, result} -> IO.puts "Handling result..."
  {:ok, _} -> IO.puts "This would be never run as previous will be matched beforehand."
  {:error} -> IO.puts "An error has occurred!"
end

some_result = 1

handle_result.({:ok, some_result})

handle_result.({:error})

#fuciones con nombres

defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
end

Greeter.hello("Sean")

#recursion usando funciones
defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

Length.of []

Length.of [1, 2, 3]

#nombre de funciones y aridad
defmodule Greeter2 do
  def hello(), do: "Hello, anonymous person!"
  def hello(name), do: "Hello, " <> name                                                      # hello/2
end

Greeter2.hello()

Greeter2.hello("Fred")

#funciones y coincidenci de patrones de un mapa
defmodule Greeter1 do
  def hello(%{name: person_name}) do
    IO.puts "Hello, " <> person_name
  end
end

ibra = %{
  name: "Fred",
  age: "95",
  favorite_color: "Taupe"
  }

  Greeter1.hello(ibra)

#vinculando el valor de la llave a una variable.
defmodule Greeter3 do
  def hello(%{name: person_name} = person) do
    IO.puts "Hello, " <> person_name
    IO.inspect person
  end
end

person = %{name: "Jose", age: "95", favorite_color: "Taupe"}

Greeter3.hello(person)

#funciones privadas
defmodule Greeter4 do
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello, " #funcion privada
end

Greeter4.hello("Jose")

#guardias y funciones con nombre
defmodule Greete5 do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

Greeter.hello ["Jose", "Cristobal"]

#argumentos por defaul
defmodule Greeter6 do
  def hello(name, language_code \\ "en") do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

Greeter6.hello("Sean", "en")

Greeter6.hello("Sean")

Greeter6.hello("Sean", "es")
