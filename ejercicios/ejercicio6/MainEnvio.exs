defmodule MainEnvio do
  def calcular_envio(nombreCliente, pesoEnvio, tipoEnvio) do
    costo =
      case tipoEnvio do
        "economico" ->
          pesoEnvio * 5000

        "express" ->
          pesoEnvio * 8000

        "internacional" ->
          cond do
            pesoEnvio <= 5 -> pesoEnvio * 15000
            pesoEnvio > 5 -> pesoEnvio * 12000
          end

        _ ->
          0
      end

    {nombreCliente, pesoEnvio, tipoEnvio, costo}
  end

  def main do
    nombreCliente = Util.input_data("Ingrese el nombre del cliente: ")
    pesoEnvio = Util.input_data("Ingrese el peso del envío en kg: ") |> String.to_float()
    tipoEnvio = Util.input_data("Ingrese el tipo de envío (Economico, Express, Internacional): ")

    {cliente, peso, tipo, costo} = calcular_envio(nombreCliente, pesoEnvio, tipoEnvio)

    mensaje =
      "Estimado #{cliente}, su envío tiene un peso de #{peso} kg, es de tipo #{tipo} y su costo a pagar es: $#{trunc(costo)}"

    Util.show_message(mensaje)
  end
end

MainEnvio.main()
