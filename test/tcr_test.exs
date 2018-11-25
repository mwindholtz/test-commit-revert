defmodule TcrTest do
  use ExUnit.Case
  doctest Tcr

  test "runs the CLI" do
    assert Tcr.cli(~w[-h something ]) == {[], [], [{"-h", "something"}]}
    # refute "BANG"
  end
end
