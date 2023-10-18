/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema1;

//Paso 1. importar la funcionalidad para generar datos aleatorios

public class Ej03Matrices {

    public static void main(String[] args) {
        // Paso 2. iniciar el generador aleatorio
        int w = 5;
        int h = 5;
        // Paso 3. definir la matriz de enteros de 5x5 e iniciarla con nros. aleatorios
        int[][] matriz = new int[w][h];
        for (int i = 0; i < w; i++) {
            for (int j = 0; j < h; j++) {
                matriz[i][j] = w + (h) + i;
            }

        }
        // Paso 4. mostrar el contenido de la matriz en consola
        for (int i = 0; i < w; i++) {
            for (int j = 0; j < h; j++) {
                System.out.print(" pos " + i + " " + j + ": " + matriz[i][j]);
            }
            System.out.println("");

        }
        // Paso 5. calcular e informar la suma de los elementos de la fila 1
        int suma1 = 0;
        for (int i = 0; i < w; i++) {
            suma1 = suma1 + matriz[1][i];
            System.out.println(suma1);
        }
        System.out.println("la suma de la fila 1 es: " + suma1);
        // Paso 6. generar un vector de 5 posiciones donde cada posición j contiene la
        // suma de los elementos de la columna j de la matriz.
        // Luego, imprima el vector.

        // Paso 7. lea un valor entero e indique si se encuentra o no en la matriz. En
        // caso de encontrarse indique su ubicación (fila y columna)
        // y en caso contrario imprima "No se encontró el elemento".

    }
}
