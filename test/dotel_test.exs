defmodule DotelTest do
  use ExUnit.Case
  doctest Dotel

  test "greets the world" do
    assert Dotel.hello() == :world
  end
end
