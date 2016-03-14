defmodule Bob do
  def silence?(input) do
    String.strip(input) == ""
  end

  def yelling?(input) do
    Regex.match?(~r/\p{L}/, input) and input == String.upcase(input)
  end

  def question?(input) do
    String.ends_with?(input, "?")
  end

  def hey(input) do
    cond do
      silence?(input)  -> "Fine. Be that way!"
      yelling?(input)  -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true             -> "Whatever."
    end
  end
end
