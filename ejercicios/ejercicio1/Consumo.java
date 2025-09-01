package ejercicio1;


import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class Consumo {
     public static void main(String[] args) {
        
            String nombre = JOptionPane.showInputDialog("Nombre del conductor:");
            String distancia = JOptionPane.showInputDialog("Distancia recorrida (km):");
            String litros = JOptionPane.showInputDialog("Litros consumidos:");

            if (args.length > 0 && args[0].equals("input")) {
            String mensaje = args[1];
            String input = JOptionPane.showInputDialog(null, mensaje);
            System.out.println(input);
        } else if (args.length > 0) {
            JOptionPane.showMessageDialog(null, args[0]);
        } else {
            JOptionPane.showMessageDialog(null, "Mensaje no recibido");
        }
    }
}
        
      

