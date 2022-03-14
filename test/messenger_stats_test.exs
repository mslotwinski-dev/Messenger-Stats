defmodule MessengerStatsTest do
  use ExUnit.Case
  doctest MessengerStats

  test "greets the world" do
    assert MessengerStats.hello() == :world
  end
end
