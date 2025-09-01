defmodule MainConsumo do
  @moduledoc """
  modulo principla para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
    funcion donde se utilizan los inputs a través del util conectando los Joptions para extraer lo que ingrese el usuario ahi
    se piden datos como nombre del conductor, distancia recorrida en kilometros y cantidad de combustible consumido para dar el rendimiento del vehiculo
    esto para un sistema de calculo de consumo de combustible
    """
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
