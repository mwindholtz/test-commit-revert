defmodule Tcr do
  @moduledoc """
  Documentation for Tcr.
  """
  @doc """
  ## Example

      $ mix compile; mix tcr.run -h something wonderful
  """
  def run(argv) do
    argv
    |> parse_args()
  end

  def parse_args(argv) do
    IO.puts("Arguments: #{inspect(argv)}")
    OptionParser.parse(argv)
  end

  def process(:help) do
    IO.puts("""
    usage:  mix tcr.run 
    """)
  end

  def process(args) do
  end
end
