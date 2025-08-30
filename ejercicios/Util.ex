defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(mensaje) do
    System.cmd("java", ["-cp", ".", "ControlInventario", mensaje])
  end

  @doc """
    Prompts the user for input using a Java dialog and returns the input.
  """
  def input_data(data) do
 System.cmd("java", ["-cp", ".", "ControlInventario", data])
    |> elem(0)
    |> String.trim()
  end
end
