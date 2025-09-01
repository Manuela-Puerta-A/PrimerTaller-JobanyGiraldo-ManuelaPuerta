defmodule MainConsumo do
  def main(args) do
    case args do
      [nombre, dist, litros] ->
        distancia = String.to_float(dist)
        litros_f = String.to_float(litros)
        rendimiento = distancia / litros_f
        IO.puts("#{nombre}, el rendimiento es #{Float.round(rendimiento, 2)} km/L")

      _ ->
        IO.puts("Error: argumentos inválidos")
    end
  end
end

MainConsumo.main(System.argv())
