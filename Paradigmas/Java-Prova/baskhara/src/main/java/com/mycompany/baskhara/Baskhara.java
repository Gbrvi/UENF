/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.baskhara;

/**
 *
 * @author gvalm
 * 
 */


public class Baskhara {

    public static void main(String[] args) {
        QuadraticEquation equacao = new QuadraticEquation(2, -10, 12);
        
        System.out.println("Valor de b " + equacao.getDiscriminant());
        
        System.out.println("Raiz 1 = " + equacao.getRoot1());
        
        System.out.println("Raiz 2 = " + equacao.getRoot2());
    }
}
