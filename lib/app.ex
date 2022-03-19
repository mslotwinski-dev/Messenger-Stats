defmodule MessengerStats do
  use Application
  import MessengerStats.Log

  def start(_type, _args) do
    hello()

    Task.start(fn ->
      :timer.sleep(1000)
      IO.puts("done sleeping")
    end)
  end

  def hello() do
    IO.puts("Messenger Stats v1.0.0")
    IO.puts("by: Mateusz Słotwiński")
    info("hello")

    :ok
  end
end
