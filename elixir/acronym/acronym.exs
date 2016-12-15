defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    Regex.scan(~r/[a-zA-Z][^\sA-Z]+/, string)
    |> List.flatten
    |> Enum.map(&(&1 |> String.capitalize |> String.first))
    |> Enum.join("")
  end
end
