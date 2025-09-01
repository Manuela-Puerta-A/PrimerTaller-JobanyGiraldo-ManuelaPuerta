package ejercicio6;


import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class EnvioPaquete {
     public static void main(String[] args) {
        try {
            String cliente = JOptionPane.showInputDialog("Nombre del cliente:");
            String peso = JOptionPane.showInputDialog("Peso (kg):");
            String tipo = JOptionPane.showInputDialog("Tipo envío (Económico/Express/Internacional):");

           
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
    
}
