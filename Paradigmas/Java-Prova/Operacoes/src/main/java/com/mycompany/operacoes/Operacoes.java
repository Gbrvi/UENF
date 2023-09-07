/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT Ciencia da Computacao
 * 2019-2023
 * Arquivo: Operacoes  
 * Assunto: Exercício 4, operações aritméticas.
 */

/**
 *
 * @author Gabriel Almeida
 */

package com.mycompany.operacoes;

import java.util.Scanner;

class Calculator{
    public double somar(double a, double b)
    {
        return a + b;
    }
    
    public double sub(double a, double b)
    {
        return a - b;
    }
    
    public double mult(double a, double b)
    {
        return a * b;
    }
    
    public double div(double a, double b)
    {
        if(b != 0)
        {
            return a / b;
        }
        System.out.print("Impossível dividir por zero");
        return -1;
     
    } 
}

public class Operacoes {
    public static void main(String[] args) {
 
        Scanner get = new Scanner(System.in);
        Calculator calculadora = new Calculator();
  
        System.out.println("Gabriel Almeida - UENF - CCT - CC ");
        
        System.out.print("N1: ");
        double a = get.nextDouble();
        
        System.out.print("N2: ");
        double b = get.nextDouble();
        
        double sum = calculadora.somar(a, b);
        double sub = calculadora.sub(a, b);
        double mult = calculadora.mult(a, b);
        double div = calculadora.div(a, b);

        System.out.println(a + "+" + b + "= " + sum);
        
        System.out.println(a + "-" + b + "= " + sub);
        
        System.out.println(a + "*" + b + "= " + mult);
        
        System.out.println(a + "/" + b + "= " + div);
  
    }
}