#cadenas en secuenci de bytes
string = <<104, 101, 108, 108, 111>>
string <> <<0>>

#lista de caracteres
"hello" <> <<0>>

string = "\u0061\u0301"

#funciones para cadenas
String.length "World"

String.replace("World", "o", "a")

String.duplicate("Oh my ", 3)

String.split("Hello World", " ")


#anagrama
defmodule Anagram do
  def anagrams?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end
