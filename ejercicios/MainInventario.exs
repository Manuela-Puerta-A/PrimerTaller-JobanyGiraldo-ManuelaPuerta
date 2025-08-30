defmodule MainInventario do
  def calcular(titulo, unidades, precio) do
    total = unidades * precio
    "El libro \"#{titulo}\" tiene #{unidades} unidades, con un valor total de $#{total}"
  end
end


args = System.argv()

case args do
  [titulo, unidades, precio] ->
    IO.puts Inventario.calcular(titulo, String.to_integer(unidades), String.to_float(precio))

  _ ->
    IO.puts("Error: Debes pasar título, unidades y precio como argumentos.")
  end
