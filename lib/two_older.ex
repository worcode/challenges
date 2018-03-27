defmodule Age do
  def two_oldest(ages) do
    ages
    |> Enum.sort(&(&1 >= &2))
    |> Enum.take(2)
    |> Enum.sort()
  end

  def best_two_oldest(ages) do
    ages
    |> Enum.sort()
    |> Enum.take(-2)
  end
end
