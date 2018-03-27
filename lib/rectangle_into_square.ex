defmodule Rec2sq do
  def sq_test(l, w) do
    cond do
      l == w ->
        nil
      l !== w ->
        x = [w, l]
          |> Enum.sort()
        IO.inspect({x})
        sq_test(x[1] - x[0], x[0])
    end
  end

  def squares_in_rect(l, w) do
    cond do
      l == w ->
        nil
      l != w ->
        foo = if l > w, do: %{ max: l, min: w }, else: %{ max: w, min: l }
        IO.inspect(foo)
        squares_in_rect(foo.max - foo.min, foo.min)
    end
  end
end
