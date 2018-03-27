defmodule DuplicateCount do
    def foo do
        :bar
    end

    def count (text) do
        text
        |> String.codepoints()
        |> Enum.group_by(&String.downcase/1)
    end
end

# DuplicateCount.count("TestFooftesttest")
