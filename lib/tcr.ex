defmodule Tcr do
  @moduledoc """
  Documentation for Tcr.
  """
  @doc """
  ## Example

      $ mix compile; mix tcr.run -h something wonderful
  """
  def parse_args(argv) do
    IO.puts("Arguments: #{inspect(argv)}")
    OptionParser.parse(argv)
  end
end
