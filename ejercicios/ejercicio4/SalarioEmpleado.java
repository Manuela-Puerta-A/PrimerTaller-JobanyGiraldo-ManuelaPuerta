package ejercicio4;

import javax.swing.JOptionPane;
import java.io.*;
public class SalarioEmpleado {
     public static void main(String[] args) {
        try {
            String nombre = JOptionPane.showInputDialog("Nombre del empleado:");
            String base = JOptionPane.showInputDialog("Salario base:");
            String extras = JOptionPane.showInputDialog("Horas extras:");

          } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }

    
}
