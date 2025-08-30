import javax.swing.JOptionPane;
import java.io.*;

public class InventarioLibreria {
    public static void main(String[] args) {
        try {
            String titulo = JOptionPane.showInputDialog("Título del libro:");
            String unidades = JOptionPane.showInputDialog("Unidades:");
            String precio = JOptionPane.showInputDialog("Precio unitario:");

            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
}