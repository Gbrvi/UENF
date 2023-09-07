/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.baskhara;

/**
 *
 * @author gvalm
 */
public class QuadraticEquation {
    
    private double a;
    private double b;
    private double c;
    
    public QuadraticEquation(double a, double b, double c)
    {
        this.a = a;
        this.b = b;
        this.c = c;
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
    
    public double getDiscriminant()
    {
        return (Math.pow(b, 2) - (4 * this.a * this.c));
    }
    
    public double getRoot1()
    {
        if (getDiscriminant() >= 0)
        {
            return ( - this.b + Math.sqrt(getDiscriminant())) / 2 * this.a;
        }
        
        return 0;
    }
    
    public double getRoot2()
    {
        if (getDiscriminant() >= 0)
        {
            
            return ( - this.b - Math.sqrt(getDiscriminant())) / 2 * this.a;
        }
        
        return 0;

    }
}
