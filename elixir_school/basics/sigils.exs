IO.puts ~c(2 + 7 = #{2 + 7})

IO.puts ~C(2 + 7 = #{2 + 7})

re = ~r/elixir/i

IO.puts "Elixir" =~ re

IO.puts "elixir" =~ re

string = "100_000_000"

IO.inspect Regex.split(~r/_/, string)

IO.puts ~N[2015-01-23 23:50:07]

IO.puts ~U[2015-01-24 05:50:07Z]
