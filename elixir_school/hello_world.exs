defmodule Hello do
  def print(lang \\ :en)
  def print(:de), do: "Hallo Welt"
  def print(:en), do: "Hello World"
  def print(:es), do: "Hola Mundo"
  def print(:ru), do: "Привет мир"
end

Hello.print()
#"Hello World!"
Hello.print(:es)
#"Hola Mundo"
Hello.print(:ru)
#"Привет мир"