defmodule MyLists do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end

IO.puts MyLists.sum([1,2,3]) # 6
