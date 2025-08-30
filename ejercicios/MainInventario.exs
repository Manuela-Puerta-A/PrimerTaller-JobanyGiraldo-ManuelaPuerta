defmodule MainInventario do


  def main() do
    Util.input_data("Ingresa el titulo del libro")
    |> Util.show_message()
  end
end

MainInventario.main()
