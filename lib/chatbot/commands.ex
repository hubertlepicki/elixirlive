defmodule Chatbot.Commands do
  @hodor_speak [ "Hodor", "...hodor", "Hodor?", "Hodor, hodor!" ]

  def execute(_) do
    Enum.random(@hodor_speak)
  end
end

