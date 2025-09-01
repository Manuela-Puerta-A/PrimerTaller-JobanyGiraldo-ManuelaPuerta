package java;
import javax.swing.JOptionPane;
import java.io.*;
public class SalarioEmpleado {
     public static void main(String[] args) {
        try {
            String nombre = JOptionPane.showInputDialog("Nombre del empleado:");
            String base = JOptionPane.showInputDialog("Salario base:");
            String extras = JOptionPane.showInputDialog("Horas extras:");

            Process p = Runtime.getRuntime().exec(
                new String[]{"elixir", "elixir/salario.exs", nombre, base, extras}
            );

            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String result = reader.readLine();

            JOptionPane.showMessageDialog(null, result);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }

    
}
