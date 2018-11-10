defmodule Mix.Tasks.Tcr do
  @moduledoc """
  MIX_ENV=test mix tcr
  """
  use Mix.Task

  @preferred_cli_env :test
  @shortdoc "Runs Tcr"
  def run(args) do
    IO.inspect("RUNNING TESTS")
    System.put_env("MIX_ENV", "test")

    case Mix.Tasks.Test.run(~w|test args|) do
      :ok -> IO.inspect("commit")
      _ -> IO.inspect("revert")
    end
  end
end
