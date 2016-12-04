defmodule Mix.Tasks.Chat do
  use Mix.Task

  @shortdoc "Starts a conversation with a bot"
  def run(_) do
    Chatbot.Cli.run
  end
end

