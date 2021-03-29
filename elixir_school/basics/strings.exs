string = <<104, 101, 108, 108, 111>>
IO.inspect string

IO.inspect string <> <<0>>

IO.inspect 'hełło'

IO.inspect "hełło" <> <<0>>

IO.inspect ?A

new_string = "\u0061\u0301"

IO.inspect new_string

IO.inspect String.codepoints new_string

IO.inspect String.graphemes new_string

# String Functions 

IO.inspect String.length "Hello"

IO.inspect String.replace("Hello", "e", "a")

IO.inspect String.duplicate("Oh my ", 3)

IO.inspect String.split("Hello World", " ")

# Anagrams

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

IO.inspect Anagram.anagrams?("Hello", "ohell")

IO.inspect Anagram.anagrams?("María", "íMara")

IO.inspect Anagram.anagrams?(3, 5)