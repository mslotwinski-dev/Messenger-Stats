defmodule MessengerStats.Log do
  import Colors

  def info(text) do
    IO.puts(%Colors{}.cyan <> "Info: " <> %Colors{}.reset <> text)
  end

  def success(text) do
    IO.puts(%Colors{}.green <> "Success: " <> %Colors{}.reset <> text)
  end

  def warning(text) do
    IO.puts(%Colors{}.yellow <> "Warning: " <> %Colors{}.reset <> text)
  end

  def error(text) do
    IO.puts(%Colors{}.red <> "Error: " <> %Colors{}.reset <> text)
    exit(:shutdown)
  end

  def critical(text) do
    IO.puts(%Colors{}.magenta <> "Critical Error: " <> %Colors{}.reset <> text)
    exit(:shutdown)
  end
end
