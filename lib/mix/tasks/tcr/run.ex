defmodule Mix.Tasks.Tcr.Run do
  @moduledoc """
  mix tcr.run
  """
  use Mix.Task

  @shortdoc "Runs Command Line Interface"
  def run(args) do
    IO.inspect("RUNNING CLI")
    Tcr.run(args)
  end
end
