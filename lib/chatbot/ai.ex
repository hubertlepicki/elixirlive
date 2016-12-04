defmodule Chatbot.Ai do
  @responses [
    "Hodor",
    "Hodor, hodor",
    "...hodor",
    "Hodor?",
    "Hodor!",
    "Hodor, hodor, hodor"
  ]

  def interpret("Hi!") do
    "Nice to meet you! I'm Hodor"
  end

  def interpret(text) do
    Enum.random(@responses)
  end
end
