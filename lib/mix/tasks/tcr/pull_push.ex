defmodule Mix.Tasks.Tcr.PullPush do
  @moduledoc """
  mix tcr.pull_push
  """
  use Mix.Task

  @preferred_cli_env :test
  @shortdoc "Runs Git Pull/Push Loop"
  def run(args) do
    IO.inspect("RUNNING PUSH PULL")
    push_pull()
  end

  def push_pull do
    System.cmd("git", ~w[pull --rebase])
    System.cmd("git", ~w[push])
    Process.sleep(2000)
    push_pull()
  end
end
