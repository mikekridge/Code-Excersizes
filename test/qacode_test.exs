defmodule QacodeTest do
  use ExUnit.Case
  doctest Qacode

  test "10 days from now" do
    assert Challenge.Time.time_from_now(12, "months") == 12
  end

  test "10 hours from now" do
    assert Challenge.Time.time_from_now(10, "hours") == 12
  end
end
