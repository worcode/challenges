defmodule MorseCode do
  @alphabet "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  @morse_code [
    ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....",
    "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.",
    "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-",
    "-.--", "--.."
  ]

  def decode(code) do
    code
    |> String.split(~r(\ {3}))
    |> Enum.map(&String.split/1)
    |> List.flatten()
    |> Enum.map(fn(x) -> Enum.find_index(@morse_code, &(&1 == x)) end)
    |> Enum.map(fn(x) -> String.slice(@alphabet, x, 1) end)
  end

end
