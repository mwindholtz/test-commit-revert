defmodule TcrTest do
  use ExUnit.Case
  doctest Tcr

  import ExUnit.CaptureIO

  describe "run" do
    test "-h" do
      fn_under_test = fn ->
        assert 0 == Tcr.run(~w[-h])
      end

      capture_io(fn_under_test)
    end
  end

  describe "parse_args" do
    test "-h" do
      fn_under_test = fn ->
        assert :help == Tcr.parse_args(~w[-h])
      end

      capture_io(fn_under_test)
    end

    test "--help" do
      fn_under_test = fn ->
        assert :help == Tcr.parse_args(~w[-h])
      end

      capture_io(fn_under_test)
    end
  end
end
