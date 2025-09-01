defmodule MainConsumo do
 def calcular(nombre, distancia, litros) do
    rendimiento = distancia / litros
    "#{nombre}, el rendimiento es #{Float.round(rendimiento, 2)} km/L"
  end
end
MainConsumo.main()
