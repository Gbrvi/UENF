import java.util.Scanner;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.equacao;
/**
 *
 * @author gvalm
 */
public class Equacao {

    public static void main(String[] args) {
        System.out.println("Gabriel Almeida - UENF - CCT - CC");
        
        Scanner get = new Scanner(System.in);
        
        println("Digite valor para a: ");
        int a = get.nextInt();
        
        println("Digite valor para b: ");
        
        int b = get.nextInt();
        
        println("Digite valor para c: ");
        
        int c = get.nextInt();
        println("Digite valor para d: ");
        
        int d = get.nextInt();
        println("Digite valor para e: ");
        
        int e = get.nextInt();
        println("Digite valor para f: ");

        int f = get.nextInt();
        
        LinearEquation eq = new LinearEquation(a,b,c,d,e,f);
        
        System.out.println("O resultado e: " + eq.getY());
        
        System.out.println("e possivel resolver? " + eq.isSolvable());
    }
}