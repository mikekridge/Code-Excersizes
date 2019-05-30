defmodule QacodeTest do
  use ExUnit.Case
  doctest Qacode

  test "10 seconds from now" do
    assert {:ok, _result} = Challenge.Time.time_from_now(10, "seconds")
  end

  test "10 minutes from now" do
    assert {:ok, _result} = Challenge.Time.time_from_now(10, "minutes")
  end

  test "10 hours from now" do
    assert {:ok, _result} = Challenge.Time.time_from_now(10, "hours")
  end

  test "10 days from now" do
    assert {:ok, _result} = Challenge.Time.time_from_now(10, "days")
  end

  test "10 months from now" do
    assert {:ok, _result} = Challenge.Time.time_from_now(10, "months")
  end

  test "10 years from now" do
    assert {:ok, _result} = Challenge.Time.time_from_now(10, "years")
  end

  test "invalid number entry" do
    assert "Please enter a valid number or time type" =
             Challenge.Time.time_from_now("test", "test")
  end

  test "invalid time type entry" do
    assert "Please enter a valid number or time type" = Challenge.Time.time_from_now(10, "test")
  end
end
