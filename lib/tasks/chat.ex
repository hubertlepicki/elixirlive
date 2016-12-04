defmodule Mix.Tasks.Chat do
  use Mix.Task

  @shortdoc "Starts a conversation with a bot"
  def run(_) do
    Mix.Task.run "app.start", []
    Chatbot.Cli.run
  end
end

