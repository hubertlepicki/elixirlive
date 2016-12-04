defmodule Chatbot.Ai do
  alias Chatbot.Parser
  alias Chatbot.Commands

  use GenServer

  def start_link(default_state) do
    GenServer.start_link(__MODULE__, default_state, name: Chatbot.Ai)
  end

  def interpret(text) do
    GenServer.call(Chatbot.Ai, {:interpret, text})
  end

  def handle_call({:interpret, text}, _from, state) do
    response = text
               |> Parser.parse()
               |> Commands.execute()

    {:reply, response, state}
  end
end
