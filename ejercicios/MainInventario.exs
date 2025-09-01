defmodule MainInventario do
   def main([titulo, unidades, precio]) do
    u = String.to_integer(unidades)
    p = String.to_float(precio)
    total = u * p
    IO.puts("El libro \"#{titulo}\" tiene #{u} unidades, con un valor total de $#{total}")
  end

  def main(_args) do
    IO.puts("Error: debes pasar título, unidades y precio")
  end
end

MainInventario.main(System.argv())
