/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetoave;

/**
 *
 * @author gvalm
 */
public class Passaro extends AvesTerrestres {
    
    private double tamanho;
    private boolean temGarras;
    
    public Passaro(String tipoBico, String formatoAsas, String habitat, boolean podeVoar, double tamanho, boolean temGarras)
    {
        super(tipoBico, formatoAsas, habitat, podeVoar);
        this.tamanho = tamanho;
        this.temGarras = temGarras;
    }
    
    public double getTamanho()
    {
        return tamanho;
    }
    
    public boolean getTemGarras()
    {
        return temGarras;
    }

    public void setTamanho(double tamanho)
    {
        this.tamanho = tamanho;
    }
    
    public void setTemGarras(boolean temGarras)
    {
        this.temGarras = temGarras;
    }

    public void cantarMelodia()
    {
        System.out.println("Cantando melodia....");
    }
    
    public void Voar()
    {
        System.out.println("Voando....");
    }

}
