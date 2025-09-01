defmodule MainConversion do
  @moduledoc """
  modulo principla para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
    funcion principal para realizar la logica utilizando inputs con union en util para trear desde los JOptions los datos
    ingresados, datos que se piden nombre de usuario, temperatura en grados celsius  y de ahi se transforman
    para dar el mensaje final con grados fahrenheit y kelvin, esto para un sistema
    de conversion de unidades de temperatura
    """
def main do
    nombreUsuario = Util.input_data("Ingrese  el nombre del usuario: ")
    temperaturaCelsiu = Util.input_data("Ingrese la temperatura de celsiu: ")

    temperaturaCelsiu = String.to_float(temperaturaCelsiu)



    fahrenheit=(temperaturaCelsiu*(9/5))+32
    kelvin=(temperaturaCelsiu+273.15)

    mensaje = "Estimado #{nombreUsuario} la temperatura en fahrenheit es #{Float.round(fahrenheit, 1)} y en kelvin es de: #{Float.round(kelvin, 1)}  "

    Util.show_message(mensaje)
  end
end



MainConversion.main()
