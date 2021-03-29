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

defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greetings

  def greeting(name), do: Greetings.basic(name)
end

IO.puts Example.greeting("Arthur")

import List
IO.puts last([1, 2, 3])

import List, only: [last: 1]

# first([1, 2, 3]) This will not work

defmodule Hello do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")

    quote do
      def hello(name), do: unquote(greeting) <> ", " <> name
    end
  end
end

defmodule Example do 
  use Hello, greeting: "Hola"
end

IO.puts Example.hello("Franco")