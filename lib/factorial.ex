defmodule Fact do
  def v1(num) when is_integer(num) do
    cond do
      num == 0 -> 1
      num > 18 -> "That number is too high!"
      true -> num * v1(num - 1)
    end
  end

  def v1(_notnum) do
    "This is not a valid entry. Please enter in a number between 0-18"
  end

  def v2(num) do
    case num do
      0 -> 1
      num when num > 18 -> "Too high of a number!"
      _ -> num * v2(num - 1)
    end
  end

  def v3(0), do: 1

  def v3(num) when num > 18, do: "That number is too high!"

  def v3(num), do: num * v3(num - 1)
end
