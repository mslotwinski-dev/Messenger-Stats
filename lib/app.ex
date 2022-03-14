defmodule MessengerStats do
  use Application

  def start(_type, _args) do
    hello()
    Task.start(fn -> :timer.sleep(1000); IO.puts("done sleeping") end)
  end

  def hello() do
    IO.puts("Hello World")
    :world
  end
end
