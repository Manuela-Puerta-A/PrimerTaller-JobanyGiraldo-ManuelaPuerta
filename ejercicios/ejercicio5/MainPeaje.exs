defmodule MainPeaje do

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
