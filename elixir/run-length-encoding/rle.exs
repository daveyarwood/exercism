defmodule RunLengthEncoder do
  defp identity(x) do x end

  @spec encode_chunk(List.t) :: String.t
  defp encode_chunk(chars) do
    count = Enum.count(chars)
    number = if count == 1 do "" else Integer.to_string(count) end
    letter = List.first(chars)
    "#{number}#{letter}"
  end

  @spec decode_chunk(List.t) :: String.t
  defp decode_chunk([_, count, char]) do
    times = if count == "" do 1 else String.to_integer(count) end
    String.duplicate(char, times)
  end

  @spec encode(String.t) :: String.t
  def encode(string) do
    string
    |> String.codepoints
    |> Enum.chunk_by(&identity/1)
    |> Enum.map_join(&encode_chunk/1)
  end

  @spec decode(String.t) :: String.t
  def decode(string) do
    Regex.scan(~r/(\d*)([^\d])/, string)
    |> Enum.map_join(&decode_chunk/1)
  end
end
