defmodule Practice.Factor do

  def factor(x) do
    get_factors(x, 2, [])
  end

  defp get_factors(x, factor, prime_factors) when x < factor do
    prime_factors
  end

  defp get_factors(x, factor, prime_factors) when rem(x, factor) == 0 do
    [factor | get_factors(div(x, factor), factor, prime_factors)]
  end

  defp get_factors(x, factor, prime_factors) do
    get_factors(x, factor + 1, prime_factors)
  end

end
