defmodule Mix.Tasks.Tcr.Tcr do
  @moduledoc """
  mix tcr.tcr
  """
  use Mix.Task
  require Logger

  @preferred_cli_env :test
  @shortdoc "Runs Test-Commit-Revert Loop"
  def run(args) do
    args_string = List.to_string(args)
    Logger.info("RUNNING TESTS #{args_string}")
    System.put_env("MIX_ENV", "test")

    case Mix.Tasks.Test.run(~w|test #{args_string}|) do
      :ok ->
        git(~w[commit -am working_tcr])

      _ ->
        git(~w[reset --hard])
    end
  end

  def git(args) do
    Logger.info("git #{args_string = List.to_string(args)}")
    System.cmd("git", args)
  end
end
