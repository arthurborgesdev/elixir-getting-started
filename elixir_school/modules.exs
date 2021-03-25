defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

IO.puts Example.greeting("Arthur")

defmodule ExampleTwo.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

IO.puts ExampleTwo.Greetings.morning "Sean"

defmodule ExampleThree do
  @greeting "Hola"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end

end

IO.puts ExampleThree.greeting("Andressa")