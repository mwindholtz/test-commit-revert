defmodule Mix.Tasks.Tcr.Run do
  @moduledoc """
  This is the Example program under development.
  This will probably be removed in a future version.
  mix tcr.run
  """
  use Mix.Task

  @shortdoc "Runs Command Line Interface"
  def run(args) do
    IO.inspect("RUNNING CLI")
    Tcr.run(args)
  end
end
