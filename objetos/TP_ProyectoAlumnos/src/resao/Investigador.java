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
public class Investigador {
    private String nombre;
    private int categoria;
    private int especialidad;
    Subsidio[] subsidios;

    public Investigador(String nombre, int categoria, int especialidad) {
        this.nombre = nombre;
        this.categoria = categoria;
        this.especialidad = especialidad;
        this.subsidios = new Subsidio[5];
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public int getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(int especialidad) {
        this.especialidad = especialidad;
    }

    void addSub(Subsidio s, int i) {
        this.subsidios[i] = s;
    }

    double dineroTotalOtorgado() {
        double total = 0.0;
        for (int i = 1; i < subsidios.length-1; i++) {
            total = total + subsidios[i].getMonto();
        }
        return total;
    }
}
