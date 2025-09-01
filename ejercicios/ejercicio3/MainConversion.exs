defmodule MainConversion do
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
