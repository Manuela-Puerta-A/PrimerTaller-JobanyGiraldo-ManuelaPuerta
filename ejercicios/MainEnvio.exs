defmodule MainEnvio do

 def calcular(cliente, peso, tipo) do
    costo = cond do
      tipo == "Económico" -> 5000 * peso
      tipo == "Express" -> 8000 * peso
      tipo == "Internacional" and peso <= 5 -> 15000 * peso
      tipo == "Internacional" and peso > 5 -> 12000 * peso
    end
    "#{cliente} debe pagar $#{costo} por el envío (#{tipo})"
  end
end

[cliente, peso, tipo] = System.argv()
IO.puts Envio.calcular(cliente, String.to_float(peso), tipo)
MainEnvio.main()
