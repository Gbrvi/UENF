/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.equacao;

/**
 *
 * @author gvalm
 */
public class LinearEquation {
    
    private double a;
    private double b;
    private double c;
    private double d;
    private double e;
    private double f;
   
    public LinearEquation(double a, double b, double c, double d, double e, double f)
    {
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
        this.f = f;
    }

    public double getA()
    {
        return a;
    }
    
    public double getB()
    {
        return b;
    }
    
    public double getC()
    {
        return c;
    }
    
    public double getD()
    {
        return d;
    }
     
    public double getE()
    {
        return e;
    }

    public double getF()
    {
        return f;
    }
    
    public Boolean isSolvable()
    {
        return ((this.a * this.d) - (this.b * this.c)) != 0; 
    }
     
    public double getX()
    {
        return (this.e * this.d - this.b * this.f) / (this.a * this.d - this.b * this.c);
    }
    
    public double getY()
    {
        return (this.a * this.f - this.e * this.c) / (this.a * this.d - this.b * this.c);
  
    }
}
