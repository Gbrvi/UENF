/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetocomputador;

/**
 *
 * @author gvalm
 */
public class ComputadorPortatil extends Computador{
    
    private boolean touchpad;
    private double capacidadeBateria;
    
    public ComputadorPortatil(double memoriaRam, double armazenamento, boolean touchpad, double capacidadeBateria)
    {
        super(memoriaRam, armazenamento);
        this.touchpad = touchpad;
        this.capacidadeBateria = capacidadeBateria;
    }
    
    public boolean getTouchpad()
    {
        return touchpad;
    }
    
    public double getCapacidadeBateria()
    {
        return capacidadeBateria;
    }
    
    public void setTouchpad(boolean touchpad)
    {
        this.touchpad = touchpad;
    }
    
    public void setCapacidadeBateria(double capacidade)
    {
        this.capacidadeBateria = capacidade;
    }
    
    public void Guardar()
    {
        System.out.println("Guardando...");
    }
    
    public void Carregar()
    {
        System.out.println("Carregando...");
    }
    
}