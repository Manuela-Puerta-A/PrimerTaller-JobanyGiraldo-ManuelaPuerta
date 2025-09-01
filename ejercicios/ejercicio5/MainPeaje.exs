defmodule MainPeaje do
  @moduledoc """
  modulo principal para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
    funcion principal donde se extraen los inputs y se realiza la logica
    -se piden datos de vehiculo como peso placa y tipo a traves de esto
    se puede generar un case donde dependiendo del tipo genera una tarifa diferente
    esto para un sistema de registro de vehiculos en un  peaje
    """

def main do
    placaVehiculo = Util.input_data("Ingrese la placa del vehiculo: ")
    tipoVehiculo = Util.input_data("Ingrese el tipo de vehiculo: ")
    pesoVehiculoTone = Util.input_data("Ingrese el peso del vehiuclo en toneladas: ")

     tarifa =
      case String.downcase(tipoVehiculo) do
        "carro" -> 10_000
        "moto" -> 5_000
        "camion" -> 20_000+ (trunc(pesoVehiculoTone) * 2000)

        _ -> 0
      end

    mensaje = "El vehiculo de placa #{placaVehiculo} tipo #{tipoVehiculo} debe pagar $#{tarifa}"
    Util.show_message(mensaje)
  end
end

MainPeaje.main()
