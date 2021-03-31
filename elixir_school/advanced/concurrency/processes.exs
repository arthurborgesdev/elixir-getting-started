defmodule Example do
  def add(a, b) do
    IO.puts(a + b)
  end
end

IO.inspect Example.add(2, 3)

IO.inspect spawn(Example, :add, [2,3])