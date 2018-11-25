defmodule TcrTest do
  use ExUnit.Case
  doctest Tcr

  @tag :capture_log
  test "runs the CLI" do
    expected = {[], [], [{"-h", "something"}]}
    assert expected == Tcr.cli(~w[-h something ])

    # refute "BANG"
  end
end
