package java;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class RegistroPeaje {
       public static void main(String[] args) {
        try {
            String placa = JOptionPane.showInputDialog("Placa:");
            String tipo = JOptionPane.showInputDialog("Tipo (Carro/Moto/Camión):");
            String peso = JOptionPane.showInputDialog("Peso (ton):");

            Process p = Runtime.getRuntime().exec(
                new String[]{"elixir", "elixir/peaje.exs", placa, tipo, peso}
            );

            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String result = reader.readLine();

            JOptionPane.showMessageDialog(null, result);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
    
}
