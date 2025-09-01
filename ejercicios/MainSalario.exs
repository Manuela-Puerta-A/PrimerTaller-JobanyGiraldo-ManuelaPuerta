defmodule MainSalario do

 def main([nombre, base, extras]) do
    base_f = String.to_float(base)
    extras_i = String.to_integer(extras)
    valor_hora = base_f / 160.0
    total = base_f + extras_i * valor_hora * 1.5
    IO.puts("El salario total de #{nombre} es de $#{Float.round(total,2)}")
  end

  def main(_args) do
    IO.puts("Error: debes pasar nombre, base y horas extra")
  end
end

MainSalario.main(System.argv())
