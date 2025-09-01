package ejercicio5;


import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class RegistroPeaje {
       public static void main(String[] args) {
        try {
            String placa = JOptionPane.showInputDialog("Placa:");
            String tipo = JOptionPane.showInputDialog("Tipo (Carro/Moto/Camión):");
            String peso = JOptionPane.showInputDialog("Peso (ton):");


            } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
    
}
