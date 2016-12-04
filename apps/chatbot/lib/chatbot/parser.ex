defmodule Chatbot.Parser do
  def parse(text) do
    cond do
      String.match?(text, ~r/hi|hello|hola|hey/i) -> {:hi, text}
      String.match?(text, ~r/how are you|what's up/i) -> {:howdy, text}
      String.match?(text, ~r/shut up|bye|exit|quit/i) -> {:exit, text}
      true -> {:unknown, text}
    end
  end
end
