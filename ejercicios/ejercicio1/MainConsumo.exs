defmodule MainConsumo do
    def main do
    nombre = Util.input("Ingrese el nombre del conductor: ", :string)
    distancia = Util.input("Ingrese la distancia recorrida en km: ", :float)
    consumo_litros = Util.input("Ingrese el consumo de combustible en litros: ", :float)

    rendimiento = distancia / consumo_litros

    mensaje = "El nombre del conductor es #{nombre} y su rendimiento es #{Float.round(rendimiento, 2)} km/l"

    Util.show_message(mensaje)
  end
end

MainConsumo.main()
