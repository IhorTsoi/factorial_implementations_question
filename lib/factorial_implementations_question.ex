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

  def factorial_with_reduce_on_ranges(n, chunk_size \\ 4)
      when is_integer(n) and n >= 0 do
    1..n//chunk_size
    |> Stream.map(fn first_elem_of_range ->
      last_elem_of_range =
        min(
          first_elem_of_range + chunk_size - 1,
          n
        )

      range = first_elem_of_range..last_elem_of_range//1
      Enum.reduce(range, 1, &*/2)
    end)
    |> Enum.reduce(1, &*/2)
  end
end
