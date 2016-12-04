defmodule Chatbot.Cli do
  def run do
    loop()
  end

  defp loop do
    IO.gets "> "
    IO.puts "Hodor"

    loop
  end
end
