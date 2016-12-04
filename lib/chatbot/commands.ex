defmodule Chatbot.Commands do
  @hodor_speak [ "Hodor", "...hodor", "Hodor?", "Hodor, hodor!" ]

  def execute({:howdy, _text}) do
    "I'm good, thank you! And you?"
  end

  def execute({:hi, _text}) do
    "Hello, my friend!"
  end

  def execute({:exit, _text}) do
    exit(:shutdown)
  end

  def execute(_) do
    Enum.random(@hodor_speak)
  end
end

