# Comprehensions are composed by 'for' and generators (x <- list)

list = [1, 2, 3, 4, 5]
IO.inspect for x <- list, do: x*x

# Keyword Lists
IO.inspect for {_key, val} <- [one: 1, two: 2, three: 3], do: val

# Maps
IO.inspect for {k, v} <- %{"a" => "A", "b" => "B"}, do: {k, v}

# Binaries
IO.inspect for <<c <- "hello">>, do: <<c>>

list = [1, 2, 3, 4]
for n <- list, times <- 1..n do
  IO.puts String.duplicate("*", times)
end

# Filters

import Integer
IO.inspect for x <- 1..10, is_even(x), do: x

IO.inspect for x <- 1..100, is_even(x), rem(x, 3) == 0, do: x

# Usin :into

IO.inspect for {k, v} <- [one: 1, two: 2, three: 3] , into: %{}, do: {k, v}

IO.inspect for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>