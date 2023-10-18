/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema2;

public class Partido {
    private String local;
    private String visitante;
    private int golesLocal;
    private int golesVisitante;

    public Partido() {

    }

    public Partido(String unLocal, String unVisitante, int unGolLocal, int unGolVisitante) {
        local = unLocal;
        visitante = unVisitante;
        golesLocal = unGolLocal;
        golesVisitante = unGolVisitante;
    }

    public String getLocal() {
        return local;
    }

    public String getVisitante() {
        return visitante;
    }

    public int getGolesLocal() {
        return golesLocal;
    }

    public int getGolesVisitante() {
        return golesVisitante;
    }

    public void setLocal(String unEquipo) {
        local = unEquipo;
    }

    public void setVisitante(String unEquipo) {
        visitante = unEquipo;
    }

    public void setGolesLocal(int unosGoles) {
        golesLocal = unosGoles;
    }

    public void setGolesVisitante(int unosGoles) {
        golesVisitante = unosGoles;
    }

    public boolean hayGanador() {
        return (golesLocal != golesVisitante);
    }

    public boolean hayEmpate() {
        return ((golesLocal == golesVisitante));
    }

    public String getGanador() {
        String ganador = new String();
        if (golesLocal > golesVisitante) {
            ganador = local;
        } else {
            if (golesLocal < golesVisitante) {
                ganador = visitante;
            }
        }
        return ganador;

    }

    @Override
    public String toString() {
        return "Partido [local=" + local + ", visitante=" + visitante + ", golesLocal=" + golesLocal
                + ", golesVisitante=" + golesVisitante + "]" + " Gano: " + gano();
    }

    private String gano() {
        String gana;
        if (getGolesLocal() > getGolesVisitante()) {
            gana = local;
        } else
            gana = visitante;

        return gana;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        Partido p = new Partido();
        Partido[] partidos = new Partido[2];
        p.setLocal("estudiante");
        p.setVisitante("Lobo");
        p.setGolesLocal(2);
        p.setGolesVisitante(1);
        partidos[0] = p;
        partidos[1] = p;
        partidos[2] = p;
        System.out.println(partidos[0].toString());
    }
}
