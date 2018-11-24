defmodule Mix.Tasks.Tcr do
  @moduledoc """
  script/limbo.sh
  mix tcr
  """
  use Mix.Task

  @preferred_cli_env :test
  @shortdoc "Runs Tcr"
  def run(args) do
    IO.inspect("RUNNING TESTS")
    System.put_env("MIX_ENV", "test")

    case Mix.Tasks.Test.run(~w|test args|) do
      :ok ->
        IO.inspect("git commit -am working")
        System.cmd("git", ~w[commit -am working])

      _ ->
        IO.inspect("git reset — hard")
        System.cmd("git", ~w[reset --hard])
    end
  end
end
