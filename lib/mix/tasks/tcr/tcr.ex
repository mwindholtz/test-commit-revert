defmodule Mix.Tasks.Tcr.Tcr do
  @moduledoc """
  mix tcr.tcr
  """
  use Mix.Task

  @preferred_cli_env :test
  @shortdoc "Runs Test-Commit-Revert Loop"
  def run(args) do
    IO.inspect("RUNNING TESTS #{inspect(args)}")
    System.put_env("MIX_ENV", "test")
    args_string = List.to_string(args)

    case Mix.Tasks.Test.run(~w|test args_string|) do
      :ok ->
        IO.inspect("git commit -am working")
        System.cmd("git", ~w[commit -am working])

      _ ->
        IO.inspect("git reset — hard")
        System.cmd("git", ~w[reset --hard])
    end
  end
end
