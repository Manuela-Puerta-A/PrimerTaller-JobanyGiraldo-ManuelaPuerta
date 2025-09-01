 def show_message(message), do: IO.puts(message)

  def input(message, :string), do: IO.gets(message) |> String.trim()

  def input(message, :integer) do
    try do
      input(message, :string) |> String.to_integer()
    rescue
      ArgumentError ->
        IO.puts("Error: Input no es un entero válido.")
        input(message, :integer)
    end
  end

  def input(message, :float) do
    try do
      input(message, :string) |> String.to_float()
    rescue
      ArgumentError ->
        IO.puts("Error: Input no es un número real válido.")
        input(message, :float)
    end
  end

