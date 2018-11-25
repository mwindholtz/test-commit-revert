defmodule TcrTest do
  use ExUnit.Case
  doctest Tcr

  @tag :capture_log
  test "parse_args" do
    expected = {[], [], [{"-h", "something"}]}
    assert expected == Tcr.parse_args(~w[-h something ])

    # refute "BANG"
  end
end
