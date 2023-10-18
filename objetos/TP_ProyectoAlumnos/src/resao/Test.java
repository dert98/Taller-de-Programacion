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
public class Test {
    public static void main(String[] args) {
        Proyecto p = new Proyecto("casa", 1, "dert");
        Subsidio s = new Subsidio(1000, "hacer mi casa");
        Investigador i = new Investigador("oscar", 1, 2);
        i.addSub(s, 1);
        i.addSub(s, 2);
        i.addSub(s, 3);
        p.addInv(i, 1);
        s.infalse();
        i.addSub(s, 3);
        p.addInv(i, 2);
        System.out.println("total :");
        System.out.println(p.investigadores[1].dineroTotalOtorgado());
        System.out.println("termino");
    }
}
