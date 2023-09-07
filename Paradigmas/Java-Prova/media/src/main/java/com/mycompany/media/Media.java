/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.media;
import java.util.Scanner;

/**
 *
 * @author Gabriel Almeida
 */

class CalcMedia
{
    private float a;
    private float b;
    private float c;
    private float d;
    private float e;
    public CalcMedia(float a, float b, float c, float d, float e)
    {
       this.a = a;
       this.b = b;
       this.c = c;
       this.d = d;
       this.e = e;
    }
    
    
    public float getMedia()
    {
        return ((a + b + c + d + e) / 5);
    }
    
    
    public boolean aprovado()
    {
        return (getMedia() >= 6.0);
    }
}


public class Media {

    public static void main(String[] args) {
        System.out.println("Gabriel Almeida - UENF ");
        
        Scanner get = new Scanner(System.in);
        
        System.out.print("N1: ");
        float a = get.nextFloat();
        
        System.out.print("N2: ");
        float b = get.nextFloat();
        
        System.out.print("N3: ");
        float c = get.nextFloat();
        
        System.out.print("N4: ");
        float d = get.nextFloat();
        
        System.out.print("N5: ");
        float e = get.nextFloat();
        
        CalcMedia media = new CalcMedia(a, b, c, d, e);
        
        float m = media.getMedia();
        boolean aprovado = media.aprovado();
        
        System.out.println("A media das notas e: " + m);
        System.out.println("Aprovado? " + aprovado);
        
    }
}


