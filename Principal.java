/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package codigo;

import java.io.File;

/**
 *
 * @author HP
 */
public class Principal {
    public static void main(String[] args) {
        String ruta = "C:/Users/HP/Documents/NetBeansProjects/JavaApplication3/src/codigo/Lexer.flex";
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        jflex.Main.generate(archivo);
    }
}
