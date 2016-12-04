defmodule Chatbot.Ai do
  @responses [
    "Hodor",
    "Hodor, hodor",
    "...hodor",
    "Hodor?",
    "Hodor!",
    "Hodor, hodor, hodor"
  ]

  def interpret(text) do
    Enum.random(@responses)
  end
end
