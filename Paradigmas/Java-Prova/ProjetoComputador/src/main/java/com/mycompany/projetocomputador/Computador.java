/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetocomputador;

/**
 *
 * @author gvalm
 */
public class Computador {
    
    private double memoriaRam;
    private double armazenamento;
    
    public Computador(double memoriaRam, double armazenamento)
    {
        this.memoriaRam = memoriaRam;
        this.armazenamento = armazenamento;
    }
    
    public double getMemoriaRam()
    {
        return memoriaRam;
    }
    
    public double getArmazenamento()
    {
        return armazenamento;
    }
    
    public void setMemoriaRam(double memoria)
    {
        this.memoriaRam = memoria;
    }
    
    public void setArmazenamento(double armazenamento)
    {
        this.armazenamento = armazenamento;
    }
    
    public void Ligar()
    {
        System.out.println("Ligando...");
    }
    
    public void Desligar()
    {
        System.out.println("Desligando...");
    }
    
}