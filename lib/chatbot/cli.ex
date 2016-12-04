defmodule Chatbot.Cli do
  import IO, only: [gets: 1, puts: 1]
  import String, only: [trim: 1]
  alias Chatbot.Ai

  def run do
    loop()
  end

  defp loop do
    try do
      gets("> ")
      |> trim()
      |> Ai.interpret()
      |> puts()
    catch
      :exit, _value -> :rescued
    end

    loop
  end
end
