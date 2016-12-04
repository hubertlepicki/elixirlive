defmodule Chatbot.Cli do
  import IO, only: [gets: 1, puts: 1]
  import String, only: [trim: 1]
  alias Chatbot.Ai

  def run do
    loop()
  end

  defp loop do
    gets("> ")
    |> trim()
    |> Ai.interpret()
    |> puts()

    loop
  end
end
