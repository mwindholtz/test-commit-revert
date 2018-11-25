defmodule TcrTest do
  use ExUnit.Case
  doctest Tcr

  import ExUnit.CaptureIO

  test "run" do
    fn_under_test = fn ->
      assert 0 == Tcr.run(~w[-h])
    end

    capture_io(fn_under_test)
  end

  describe "parse_args" do
    test "-h" do
      fn_under_test = fn ->
        assert :help == Tcr.parse_args(~w[-h])
      end

      capture_io(fn_under_test)

      # refute "BANG"
    end
  end
end
