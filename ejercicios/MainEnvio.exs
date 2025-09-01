defmodule MainEnvio do

  def main([cliente, peso, tipo]) do
    peso_f = String.to_float(peso)

    costo = cond do
      tipo == "Económico" -> 5000 * peso_f
      tipo == "Express" -> 8000 * peso_f
      tipo == "Internacional" and peso_f <= 5 -> 15000 * peso_f
      tipo == "Internacional" and peso_f > 5 -> 12000 * peso_f
    end

    IO.puts("#{cliente} debe pagar $#{costo} por el envío (#{tipo})")
  end

  def main(_args) do
    IO.puts("Error: debes pasar cliente, peso y tipo")
  end
end

MainEnvio.main(System.argv())
