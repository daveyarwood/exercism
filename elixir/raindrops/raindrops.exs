defmodule Raindrops do
  @rules %{3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    sounds = @rules
             |> Enum.sort
             |> Enum.map(fn({n, sound}) -> if (rem(number, n) == 0), do: sound end)
             |> Enum.reject(&(&1 == nil))
             |> Enum.join("")

    if (sounds == ""), do: Integer.to_string(number), else: sounds
  end
end
