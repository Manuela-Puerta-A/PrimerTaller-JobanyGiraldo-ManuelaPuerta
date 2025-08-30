import javax.swing.JOptionPane;
import java.io.*;

public class ConversionTemperatura {
    public static void main(String[] args) {
        try {
            String nombre = JOptionPane.showInputDialog("Nombre del usuario:");
            String celsius = JOptionPane.showInputDialog("Temperatura en °C:");

            Process p = Runtime.getRuntime().exec(
                new String[]{"elixir", "elixir/conversion_temp.exs", nombre, celsius}
            );

            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String result = reader.readLine();

            JOptionPane.showMessageDialog(null, result);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
}