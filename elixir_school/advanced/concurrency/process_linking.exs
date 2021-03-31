defmodule Example do 
  def explode, do: exit(:kaboom)
end

IO.inspect spawn(Example, :explode, [])

IO.inspect spawn_link(Example, :explode, [])
