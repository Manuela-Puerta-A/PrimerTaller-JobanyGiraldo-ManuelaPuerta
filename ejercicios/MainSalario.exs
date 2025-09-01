defmodule MainSalario do

def calcular(nombre, base, extras) do
    valor_hora = base / 160.0
    total = base + extras * valor_hora * 1.5
    "El salario total de #{nombre} es de $#{Float.round(total,2)}"
  end
end

[nombre, base, extras] = System.argv()
IO.puts Salario.calcular(nombre, String.to_float(base), String.to_integer(extras))
MainSalario.main()
