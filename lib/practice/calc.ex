defmodule Practice.Calc do
  def calc(expr) do

    cond do
      String.match?(expr, ~r/^[0-9\+\-\/\*\(\)\ ]+$/) -> elem(Code.eval_string(expr), 0)
      true -> "Invalid expression"
    end
  end

end
