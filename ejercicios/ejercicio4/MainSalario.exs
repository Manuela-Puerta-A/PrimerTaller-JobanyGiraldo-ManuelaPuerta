defmodule MainSalario do
  @moduledoc """
  modulo principla para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
    funcion principal para realizar la logica se piden datos de
    nombre de empleado salariobase y horas extras para realizar un sistema de calculo de salario de empleado
    
    """
  def main do
    nombreEmpleado = Util.input_data("Ingrese el nombre del empleado: ")
    salarioBase = Util.input_data("Ingrese el salario base de la persona: ")
    horasExtrasTrabajadas = Util.input_data("Ingrese el numero de horas extras trabajadas: ")

    salarioBase = String.to_float(salarioBase)
    horasExtrasTrabajadas = String.to_float(horasExtrasTrabajadas)

    valorHora = salarioBase / 240

    salario_total = salarioBase + (horasExtrasTrabajadas * valorHora * 1.5)

    mensaje = "El salario total de #{nombreEmpleado} es de $#{Float.round(salario_total, 2)}"
    Util.show_message(mensaje)
  end
end

MainSalario.main()
