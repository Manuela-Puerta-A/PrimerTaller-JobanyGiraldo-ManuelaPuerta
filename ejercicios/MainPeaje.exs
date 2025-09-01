defmodule MainPeaje do

 def calcular(placa, tipo, peso) do
    tarifa =
      case tipo do
        "Carro" -> 10000
        "Moto" -> 5000
        "Camión" -> 20000 + trunc(peso) * 2000
        _ -> 0
      end
    "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}"
  end
end

[placa, tipo, peso] = System.argv()
IO.puts Peaje.calcular(placa, tipo, String.to_float(peso))
MainPeaje.main()
