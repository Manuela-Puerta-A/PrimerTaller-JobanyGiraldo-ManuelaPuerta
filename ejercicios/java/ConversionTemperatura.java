package java;
import javax.swing.JOptionPane;
import java.io.*;

public class ConversionTemperatura {
    public static void main(String[] args) {
        try {
            String nombre = JOptionPane.showInputDialog("Nombre del usuario:");
            String celsius = JOptionPane.showInputDialog("Temperatura en °C:");

            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
}