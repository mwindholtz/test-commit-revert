defmodule TcrTest do
  use ExUnit.Case
  doctest Tcr

  test "greets the world" do
    assert Tcr.hello() == :world
    # refute "BANG"
  end
end
