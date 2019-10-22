fileName = IO.gets("Which file you want to count?  ") |> String.trim()
words =   File.read!(fileName)
          |> String.split(~r{(\\n|[^\w`])+})
          |> Enum.filter(fn x -> x != "" end)

words |> Enum.count() |> IO.puts()
