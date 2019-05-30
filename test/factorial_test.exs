defmodule FactorialTest do
  use ExUnit.Case

describe "v1/1" do
  test "5!" do
    assert Fact.v1(5) == 120
  end

  test "0!" do
    assert Fact.v1(0) == 1
  end

  test "19!" do
    assert Fact.v1(19) == "That number is too high!"
  end

  test "test" do
    assert Fact.v1("test") == "This is not a valid entry. Please enter in a number between 0-18"
  end
end

describe "v2/1" do
  test "5!" do
    assert Fact.v2(5) == 120
  end

  test "0!" do
    assert Fact.v2(0) == 1
  end

  test "19!" do
    assert Fact.v2(19) == "Too high of a number!"
  end
end

describe "v3/1" do
  test "5!" do
    assert Factorial.v3(5) == 120
  end

  test "0!" do
    assert Factorial.v3(0) == 1
  end

  test "19!" do
    assert Factorial.v3(19) == "The number is too high!"
  end
end
