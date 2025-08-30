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

  # =======================
  # MÉTODOS CON JAVA (Swing)
  # =======================
  @doc """
  Muestra un mensaje con un cuadro de diálogo de Java.
  Requiere que la clase Mensaje.java esté compilada.
  """
  def show_message_java(message) do
    System.cmd("java", ["-cp", ".", "InventarioLibreria.java", message])
  end

  @doc """
  Pide datos con un cuadro de diálogo de Java y devuelve el valor ingresado.
  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "InventarioLibreria.java", "input", data])
    |> elem(0)
    |> String.trim()
  end
