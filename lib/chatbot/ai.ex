defmodule Chatbot.Ai do
  alias Chatbot.Parser
  alias Chatbot.Commands

  def interpret(text) do
    text
    |> Parser.parse()
    |> Commands.execute()
  end
end
