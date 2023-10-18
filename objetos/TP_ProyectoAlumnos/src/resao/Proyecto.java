/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package resao;

/**
 *
 * @author Vanesa
 */
public class Proyecto {
    private String nombre;
    private int código;
    private String nombreDir;
    Investigador[] investigadores;

    public Proyecto(String nombre, int código, String nombreDir) {
        this.nombre = nombre;
        this.código = código;
        this.nombreDir = nombreDir;
        this.investigadores = new Investigador[50];
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCódigo() {
        return código;
    }

    public void setCódigo(int código) {
        this.código = código;
    }

    public String getNombreDir() {
        return nombreDir;
    }

    public void setNombreDir(String nombreDir) {
        this.nombreDir = nombreDir;
    }

    public static void main(String[] args) {

    }

    void addInv(Investigador i, int os) {
        this.investigadores[os] = i;
    }

    double dineroTotalOtorgado() {
        double total = 0.0;
        for (int i = 1; i < investigadores.length-1; i++) {
            total = total + investigadores[i].dineroTotalOtorgado();
        }
        return total;
    }
}
