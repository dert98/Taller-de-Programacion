
package tema1;

//Paso 1: Importar la funcionalidad para lectura de datos

public class Ej02Jugadores {

    public static void main(String[] args) {
        int DF = 15;
        // Paso 2: Declarar la variable vector de double
        double[] tabla;
        // Paso 3: Crear el vector para 15 double
        tabla = new double[DF];
        // Paso 4: Declarar indice y variables auxiliares a usar
        double suma = 0;
        int cantMas = 0;
        double promedio;
        // Paso 6: Ingresar 15 numeros (altura), cargarlos en el vector, ir calculando
        // la suma de alturas
        for (int i = 0; i < DF; i++) {
            tabla[i] = i + 0.1;
            suma = suma + tabla[i];
        }

        // Paso 7: Calcular el promedio de alturas, informarlo
        promedio = suma / DF;
        // Paso 8: Recorrer el vector calculando lo pedido (cant. alturas que están por
        // encima del promedio)
        for (int i = 0; i < tabla.length; i++) {
            if (tabla[i] > promedio)
                cantMas++;
        }
        // Paso 9: Informar la cantidad.
        System.out.println("la suma de las alturas es: " + suma);
        System.out.println("la cantidad de elementos q superan el promedio es:" + cantMas);
    }

}
