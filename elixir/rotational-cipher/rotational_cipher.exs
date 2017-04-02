defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |> to_charlist
    |> Enum.map(fn(char) ->
      cond do
        char in ?a..?z ->
          ?a + rem(char + shift - ?a, 26)
        char in ?A..?Z ->
          ?A + rem(char + shift - ?A, 26)
        :else ->
          char
      end
    end)
    |> to_string
  end
end

