defmodule MainConversion do
  def convertir(nombre, celsius) do
    f = (celsius * 9/5) + 32
    k = celsius + 273.15
    "#{nombre}, la temperatura es: #{Float.round(f,1)} °F y #{Float.round(k,1)} K"
  end
end

[nombre, celsius] = System.argv()
IO.puts ConversionTemp.convertir(nombre, String.to_float(celsius))

MainConversion.main()
