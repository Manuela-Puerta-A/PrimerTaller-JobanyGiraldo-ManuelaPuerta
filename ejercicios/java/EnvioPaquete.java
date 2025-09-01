package java;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class EnvioPaquete {
     public static void main(String[] args) {
        try {
            String cliente = JOptionPane.showInputDialog("Nombre del cliente:");
            String peso = JOptionPane.showInputDialog("Peso (kg):");
            String tipo = JOptionPane.showInputDialog("Tipo envío (Económico/Express/Internacional):");

            Process p = Runtime.getRuntime().exec(
                new String[]{"elixir", "elixir/envio.exs", cliente, peso, tipo}
            );

            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String result = reader.readLine();

            JOptionPane.showMessageDialog(null, result);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
    
}
