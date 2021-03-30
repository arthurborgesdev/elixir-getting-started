# Standard Library

defmodule Example do 
  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts("Time: #{time} μs")
    IO.puts("Result: #{result}")
  end

  def deps do
    [{:png, github: "yuce/png"}]
  end
end

Example.timed(fn (n) -> (n * n) * n end, [100])

# Erlang Packages

# png = :png.create(%{:size => {30, 30}, :mode => {:indexed, 8}, :file => file, :palette => palette})