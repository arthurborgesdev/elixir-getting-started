defmodule Example do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    listen()
  end
end

pid = spawn(Example, :listen, [])

IO.inspect pid

IO.inspect send pid, {:ok, "hello"}

IO.inspect send pid, :ok