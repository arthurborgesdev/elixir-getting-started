user = %{first: "Sean", last: "Callan"}

result = with {:ok, first} <- Map.fetch(user, :first),
              {:ok, last} <- Map.fetch(user, :last),
              do: last <> ", " <> first

IO.puts result        