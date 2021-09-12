Benchee.run(
  %{
    "Factorial with reduce" => fn n ->
      FactorialImplementationsQuestion.factorial_with_reduce(n)
    end,
    "Factorial with reduce on chunks" => fn n ->
      FactorialImplementationsQuestion.factorial_with_reduce_on_chunks(n)
    end
  },
  inputs: %{
    "5'000" => 5_000,
    "100'000" => 100_000,
    "500'000" => 500_000
  },
  time: 60,
  memory_time: 60
)
