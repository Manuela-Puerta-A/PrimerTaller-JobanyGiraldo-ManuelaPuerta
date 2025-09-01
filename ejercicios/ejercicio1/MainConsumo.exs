defmodule MainConsumo do
     def main do
    nombre = Util.input_data("Ingrese el nombre del conductor: ")
    distancia = Util.input_data("Ingrese la distancia recorrida en km: ")
    litros = Util.input_data("Ingrese el consumo de combustible en litros: ")



    distancia = String.to_float(distancia)
    litros = String.to_float(litros)



    rendimiento = distancia / litros

    mensaje = "El nombre del conductor es #{nombre} y su rendimiento es #{Float.round(rendimiento, 2)} km/l"

    Util.show_message(mensaje)
  end
end

MainConsumo.main()
