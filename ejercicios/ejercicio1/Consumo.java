package ejercicio1;


import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class Consumo {
     public static void main(String[] args) {
        try {
            String nombre = JOptionPane.showInputDialog("Nombre del conductor:");
            String dist = JOptionPane.showInputDialog("Distancia recorrida (km):");
            String litros = JOptionPane.showInputDialog("Litros consumidos:");


        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
}
    

