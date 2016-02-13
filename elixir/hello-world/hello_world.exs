defmodule HelloWorld do
  @doc """
  Greets the user by name, or by saying "Hello, World!"
  if no name is given.
  """
  @spec hello(String.t) :: String.t
  def hello(name \\ "World") do
    "Hello, #{name}!"
  end
end
