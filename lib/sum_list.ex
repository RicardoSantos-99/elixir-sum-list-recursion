defmodule SumList do
  def call(list), do: sum(list, 0)

  def call_enum(list), do: Enum.sum(list)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end

# [1,2,3], 0 => 6

# ex: [1,2,3] hd: 1, tl: [2,3], acc: 0
# ex: acc = 0 + 1 = 1
# ex: [2,3] hd: 2, tl: [3], acc: 1
# ex: acc = 1 + 2 = 3
# ex: [3] hd: 3, tl: [], acc: 3
# ex: acc = 3 + 3 = 6
# ex: [], acc: 6
