defmodule Tcr do
  @moduledoc """
  Experiment in **Test && Commit || Revert**
  
  ## Installation
  
  git clone https://github.com/mwindholtz/test-commit-revert
  
  ### In one terminal window run
  `mix tcr.pull_push`
  This will push commits to the trunk whenever they are ready
  
  ### In another window run 
  `mix tcr.tcr`
  This will run tests and save commits if test passes, and revert if it does not.
  
  ### Run the app manually 
  `mix tcr.run --help`
  
  
  #### References
  * [Kent Beck](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864)
  * [JB Rainsberger](https://blog.thecodewhisperer.com/permalink/the-worlds-shortest-article-on-test-and-commit-otherwise-revert)
  * [Thomas Deniffel](https://medium.com/@tdeniffel/tcr-test-commit-revert-a-test-alternative-to-tdd-6e6b03c22bec)

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

  def process(_args) do
  end
end
