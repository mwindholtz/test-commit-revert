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
      {_, ["why_would_you_do_this"], _} -> :speaker_test
      {[help: true], _, _} -> :help
      {["boom"]} -> :boom
      _args -> :invalid
    end
  end

  def process(:help) do
    IO.puts("""
    usage:  mix tcr.run [ --help | -h | help]
    """)

    0
  end

  def process(:invalid) do
    IO.puts("""
    invalid arguments. see: mix tcr.run --help
    """)

    0
  end

  def process(:speaker_test) do
    System.cmd("say", ~w["speaker test"])

    0
  end

  def process(_args) do
  end
end
