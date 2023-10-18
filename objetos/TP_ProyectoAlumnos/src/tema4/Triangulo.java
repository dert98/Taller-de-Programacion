/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema4;

/**
 *
 * @author Vanesa
 */
public class Triangulo extends Figura{

    private double lado;
    
    public Triangulo(double unLado, String unColorR, String unColorL){
        super(unColorR,unColorL);
        setLado(unLado);

    }

    private void setLado(double unLado) {
        this.lado = unLado;
    }
    
    public double calcularArea(){
       return (getLado()* getLado());
    }

    private double getLado() {
        return this.lado;
    }
    
    public double calcularPerimetro(){
       return (getLado()*4);
    }
}
