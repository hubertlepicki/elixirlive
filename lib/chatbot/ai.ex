defmodule Chatbot.Ai do
  def interpret(text) do
    responses = [
      "Hodor",
      "Hodor, hodor",
      "...hodor",
      "Hodor?",
      "Hodor!",
      "Hodor, hodor, hodor"
    ]
    Enum.random(responses)
  end
end
