defmodule Mix.Tasks.Tcr.PushPull do
  @moduledoc """
  mix tcr.limbo
  """
  use Mix.Task

  @preferred_cli_env :test
  @shortdoc "Runs Tcr Push/Pull Loop"
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
