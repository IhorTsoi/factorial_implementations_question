defmodule FactorialImplementationsQuestion do
  def factorial_with_reduce(n)
      when is_integer(n) and n >= 0 do
    1..n//1
    |> Enum.reduce(1, &*/2)
  end

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
