defmodule MainEnvio do
  @moduledoc """
  modulo principla para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
    funcion creada para calcular el costo de envio dependiendo de su tipo
    -case compara el valor exacto de la variable tipoEnvio con cada patrón (cada string).
    -cond do abre un bloque de condiciones.Cada línea dentro del bloque tiene la forma:
      condición -> resultado
    -La condición es evaluada (tiene que dar true o false).
    Si la condición da true, se devuelve el resultado que está después de la flecha (->).
    Elixir va evaluando de arriba hacia abajo y se queda con la primera condición verdadera.

    """
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
   @doc """
   funcion principal donde se manda los inputs para traer desde java los datos ingresados en los jOption
   se solicita datos de nombre de cliente peso de envio tipo de envio y dependiendo del tipo y peso
   se genera el costo de envio esto para un sistema que calcule el costo de envio de un paquete
   """
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
