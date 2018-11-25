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
    |> process
  end

  def parse_args(argv) do
    IO.puts("Arguments: #{inspect(argv)}")

    parsed =
      OptionParser.parse(
        argv,
        switches: [help: :boolean],
        aliases: [h: :help]
      )

    case parsed do
      {_, ["help"], _} -> :help
      {[help: true], _, _} -> :help
      args -> IO.inspect(args, label: "UNCAUGHT")
    end
  end

  def process(:help) do
    IO.puts("""
    usage:  mix tcr.run 
    """)

    0
  end

  def process(_args) do
  end
end
