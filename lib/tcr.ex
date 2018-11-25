defmodule Tcr do
  @moduledoc """
  Documentation for Tcr.
  """
  @doc """
  ## Example

      $ mix compile; mix tcr.run -h something wonderful
  """
  def cli(argv) do
    IO.puts('Arguments:')
    OptionParser.parse(argv)
  end
end
