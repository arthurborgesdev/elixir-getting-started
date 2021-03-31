defmodule Example do
  def explode, do: exit(:kaboom)

  def run do
    spawn_monitor(Example, :explode, [])

    receive do
      {:DOWN, _ref, :process, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end
end

IO.inspect Example.run