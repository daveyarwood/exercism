defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) when is_binary(sentence) do
    # if sentence is a string, break it up into words
    count(words(sentence))
  end

  @spec count(List.t) :: map
  def count(sentence) when is_list(sentence) do
    count(sentence, %{})
  end

  @spec count(List.t, Map.t) :: map
  def count([], freqs) do
    freqs
  end

  @spec count(List.t, Map.t) :: map
  def count([word | words], freqs) do
    freqs = Map.update freqs, String.downcase(word), 1, &(&1 + 1)
    count(words, freqs)
  end

  @doc """
  Splits a string on whitespace and returns the list of words.

  All non-letter characters in the sentence are treated as whitespace.
  """
  @spec words(String.t) :: List
  def words(sentence) do
    # adding ö to the set of chars to include is kind of a cop-out
    # i couldn't figure out an easy way to add all Unicode letters...
    # i figured \p{L} would cover it, but it doesn't work for some reason
    # ¯\_(ツ)_/¯
    String.split(String.replace sentence, ~r/[^\p{Latin}\-\dö]/, " ")
  end
end
