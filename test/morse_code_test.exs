defmodule TestSolution do
  use ExUnit.Case

  test "decode me plz" do
    assert MorseCode.decode(".... . -.--   .--- ..- -.. .") == "HEY JUDE"
  end
end
