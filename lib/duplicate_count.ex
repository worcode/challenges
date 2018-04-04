defmodule DuplicateCount do
    def foo do
        :bar
    end

    def count (text) do
        text
        |> String.codepoints()
        |> Enum.group_by(&String.downcase/1)
        |> Map.values()
        |> Enum.filter(fn(x) -> length(x) > 1 end)
        |> Enum.count()
    end
end

# DuplicateCount.count("TestFooftesttest")
