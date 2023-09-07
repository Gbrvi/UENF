/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.soma7;

/**
 *
 * @author Gabriel Almeida
 */

import java.util.Scanner;

class SomaInt {
    public int somador(int a, int b)
    {
        int soma = 0;
        
        if(a < b)
        {
            for(int i=a; i<=b; i++)
            {
                soma += 1;
            }
            return soma;
        }
        else
        {
            System.out.println("ERRO: A é maior que B");
            return -1;
        }
        
        
    }
}

public class Soma7 {

    public static void main(String[] args) {
        
        Scanner get = new Scanner(System.in);
        SomaInt somador = new SomaInt();
        
        
        System.out.println("Valor de a: ");
        int a = get.nextInt();
        
        System.out.println("Valor de b: ");
        int b = get.nextInt();
        
        System.out.println("Gabriel Almeida - UENF");
        
        int soma;
        soma = somador.somador(a, b);
        
        System.out.println("A soma é: " + soma);
        
        
    }
}
