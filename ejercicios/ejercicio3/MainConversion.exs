defmodule MainConversion do
    def main([nombre, celsius]) do
    f = (String.to_float(celsius) * 9/5) + 32
    k = String.to_float(celsius) + 273.15
    IO.puts("#{nombre}, la temperatura es: #{Float.round(f,1)} °F y #{Float.round(k,1)} K")
  end

  def main(_args) do
    IO.puts("Error: debes pasar nombre y celsius")
  end
end

MainConversion.main(System.argv())
