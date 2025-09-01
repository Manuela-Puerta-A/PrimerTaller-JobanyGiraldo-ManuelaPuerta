defmodule MainPeaje do

def main([placa, tipo, peso]) do
    peso_f = String.to_float(peso)

    tarifa =
      case tipo do
        "Carro" -> 10000
        "Moto" -> 5000
        "Camión" -> 20000 + trunc(peso_f) * 2000
        _ -> 0
      end

    IO.puts("Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}")
  end

  def main(_args) do
    IO.puts("Error: debes pasar placa, tipo y peso")
  end
end

MainPeaje.main(System.argv())
