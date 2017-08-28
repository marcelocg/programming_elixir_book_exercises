defmodule MyLists do
# Write a mapsum function that takes a list and a function. It applies the
# function to each element of the list and then sums the result
  def mapsum([], _fun), do: 0
  def mapsum([head | tail], fun), do: fun.(head) + mapsum(tail, fun)
  
# Write a max(list) that returns the element with the maximum value in the list.
  def max([]), do: _max([])
  def max([head | tail]) do
  end
end

IO.puts MyLists.mapsum([1,2,3], &(&1 * &1)) # 14
