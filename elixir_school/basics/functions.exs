sum = fn a, b -> a + b end

IO.puts sum.(2, 3)


multiply = &(&1 * &2 * &3) 

IO.puts multiply.(2, 3, 4)

# Pattern matching with functions

handle_result = fn
  {:ok, result} -> IO.puts "Handling result..."
  {:ok, _} -> IO.puts "This would never run, as the first statement will catch"
  {:error} -> IO.puts "An error occurred!"
end

IO.puts handle_result.({:ok, "bla"})

IO.puts handle_result.({:error})

# Named functions must be defined inside Modules, which are useful building blocks in Elixir

defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
end

IO.puts Greeter.hello("Sean")

# If the function body spans only one line, it can be shortened:

defmodule Greeter do
  def hello(name), do: "Hello, " <> name
end

IO.puts Greeter.hello("Sean")

# Recursion

defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

IO.puts Length.of []
# 0

IO.puts Length.of ["José", "Maria", "João", "Pedro"]

# first iteration:  1 + of(["Maria", "João", "Pedro"])
# second iteration: 1 + 1 + of(["João", "Pedro"])
# third iteration:  1 + 1 + 1 + of(["Pedro"])
# forth iteration:  1 + 1 + 1 + 1 of([])
# fifth iteration:  1 + 1 + 1 + 1 + 0 = 4

# Function naming and Arity

defmodule Greeter2 do
  def hello(), do: "Hello, annonymous person!"                #hello/0
  def hello(name), do: "Hello, " <> name                      #hello/1
  def hello(name1, name2), do: "Hello, #{name1} and #{name2}" #hello/2
end

IO.puts Greeter2.hello()
IO.puts Greeter2.hello("Arthur")
IO.puts Greeter2.hello("Arthur", "Andressa")

# Functions and Pattern Matching

defmodule Greeter3 do # -> Each side will pattern match against the incomming argument and bind to whatever it matches with
  def hello(%{name: person_name} = person) do # or hello(person = %{name: person_name}) 
    IO.puts "Hello, " <> person_name
    IO.inspect person
  end
end

person = %{name: "Fred", age: "95", favorite_color: "Taupe"}

Greeter3.hello(person)

# Private functions

defmodule Greeter do 
  # def hello(name), do: phrase() <> name
  # defp phrase, do: "Hello, "
end

# IO.puts Greeter.hello("Sean")
# IO.puts Greeter.phrase

# Guards

defmodule Greeters do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase <> name
  end

  defp phrase, do: "Hello, "
end

IO.puts Greeters.hello ["Sean", "Steve"]

# Default arguments 

# Use \\
# When using guards and default arguments, add a function head with default arguments