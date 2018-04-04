defmodule MorseCode do
  @alphabet "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
  @morse_code [
    ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....",
    "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.",
    "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-",
    "-.--", "--..", "S"
  ]

  def replace_alphabet(code) do
    String.at(@alphabet, Enum.find_index(@morse_code, &(&1 == code)))
  end

  def decode(code) do
    code
    |> String.replace(~r(\ {3}), " S ")
    |> String.split()
    |> Enum.map(&replace_alphabet/1)
    |> Enum.join("")
  end

end
