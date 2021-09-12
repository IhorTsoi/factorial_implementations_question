defmodule FactorialImplementationsQuestion do
  @doc """
    Examples:

    iex> FactorialImplementationsQuestion.factorial_with_reduce 0
    1

    iex> FactorialImplementationsQuestion.factorial_with_reduce 5
    120
  """
  def factorial_with_reduce(n)
      when is_integer(n) and n >= 0 do
    1..n//1
    |> Enum.reduce(1, &*/2)
  end

  @doc """
    Examples:

    iex> FactorialImplementationsQuestion.factorial_with_reduce_on_chunks 0
    1

    iex> FactorialImplementationsQuestion.factorial_with_reduce_on_chunks 5
    120
  """
  def factorial_with_reduce_on_chunks(n, chunk_size \\ 4)
      when is_integer(n) and n >= 0 do
    1..n//1
    |> Stream.chunk_every(chunk_size)
    |> Stream.map(fn list ->
      Enum.reduce(list, 1, &*/2)
    end)
    |> Enum.reduce(1, &*/2)
  end
end
