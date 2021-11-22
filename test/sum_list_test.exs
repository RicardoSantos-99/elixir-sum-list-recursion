defmodule SumListTest do
  use ExUnit.Case

  describe "call/2" do
    test "return the list sum" do
      list = [1, 2, 3, 4, 5]

      response = SumList.call(list)

      expected_response = 15

      assert response == expected_response
    end

    test "return the list with the negative numbers" do
      list = [-1, -2, -3, -4, -5]

      response = SumList.call(list)

      expected_response = -15

      assert response == expected_response
    end

    test "return the list with zero values" do
      list = [0, 0, 0, 0, 0]

      response = SumList.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "return the list with empty list" do
      list = []

      response = SumList.call(list)

      expected_response = 0

      assert response == expected_response
    end
  end
end
