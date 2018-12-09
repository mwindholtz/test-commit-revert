defmodule Tcr.Application do
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