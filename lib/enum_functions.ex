defmodule EnumFunctions do
  def biggest(list), do: Enum.max(list)

  def smallest(list), do: Enum.min(list)

  def multiplyFor2(list), do: Enum.map(list, fn value -> value * 2 end)

  def multiply(list), do: Enum.product(list)

  def findNumberInList(list, number), do: Enum.find(list, fn value -> value == number end)

  def existAnyNumberInListBiggerThanValue(list, value),
    do: Enum.any?(list, fn element -> element > value end)

  def orderList(list), do: Enum.sort(list)
end
