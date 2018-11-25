defmodule Tcr do
  @moduledoc """
  Documentation for Tcr.
  """
  @doc """
  ## Example

      $ mix compile; mix tcr.run -h something wonderful
  """
  def run(argv) do
    parse_args(argv)
  end

  def parse_args(argv) do
    IO.puts("Arguments: #{inspect(argv)}")
    OptionParser.parse(argv)
  end
end
