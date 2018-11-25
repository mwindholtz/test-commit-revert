defmodule Mix.Tasks.Tcr.Run do
  @moduledoc """
  mix tcr.run
  """
  use Mix.Task

  @shortdoc "Runs Command Line Interface"
  def run(args) do
    IO.inspect("RUNNING CLI")
    Tcr.cli(args)
  end
end
