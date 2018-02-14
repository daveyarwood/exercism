defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    Integer.digits(code, 2)
    |> Enum.reverse
    |> Enum.take(5)
    |> Enum.with_index
    |> Enum.reduce([], fn ({bit, index}, acc) ->
                         case {bit, index} do
                           {0, _} -> acc
                           {1, 0} -> acc ++ ["wink"]
                           {1, 1} -> acc ++ ["double blink"]
                           {1, 2} -> acc ++ ["close your eyes"]
                           {1, 3} -> acc ++ ["jump"]
                           {1, 4} -> Enum.reverse(acc)
                         end
                       end)
  end
end

