/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetoave;

/**
 *
 * @author Gabriel Almeida
 */
public class Ave {
    
    private String tipoBico;
    private String formatoAsas;
    
    public Ave(String tipoBico, String formatoAsas)
    {
        this.tipoBico = tipoBico;
        this.formatoAsas = formatoAsas;
    }
    
    public String getTipoBico()
    {
        return tipoBico;
    }
    
    public String getFormatoAsas()
    {
        return formatoAsas;
    }
    
    public void SetTipoBico(String tipoBico)
    {
        this.tipoBico = tipoBico;
    }
    
    public void SetFomartoAsas(String formatoAsas)
    {
        this.formatoAsas = formatoAsas;
    }
    
    public void Mover()
    {
        System.out.println("Movendo...");
    }
    
    public void Comer()
    {
        System.out.println("Cantando...");
    }
    
}
