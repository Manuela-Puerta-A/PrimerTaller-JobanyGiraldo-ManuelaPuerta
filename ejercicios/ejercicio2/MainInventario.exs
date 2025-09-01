defmodule MainInventario do
     def main do
    tituloLibro = Util.input_data("Ingrese el titulo del libro: ")
    unidadesDispo = Util.input_data("Ingrese la cantidad de unidades disponibles: ")
    precioUnitario = Util.input_data("Ingrese el precio unitario del libro: ")

    unidadesDispo = String.to_integer(unidadesDispo)
    precioUnitario = String.to_integer(precioUnitario)



    valorTotal= unidadesDispo * precioUnitario

    mensaje = "El titulo del libro es #{tituloLibro}, tiene #{unidadesDispo} unidades, con un valor total de #{valorTotal}"

    Util.show_message(mensaje)
  end
end



MainInventario.main()
