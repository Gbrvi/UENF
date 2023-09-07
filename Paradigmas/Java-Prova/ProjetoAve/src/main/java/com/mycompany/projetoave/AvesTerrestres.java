/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetoave;

/**
 *
 * @author Gabriel Almeoda
 */
public class AvesTerrestres extends Ave {
    
    private String habitat;
    private boolean podeVoar;
    
    public AvesTerrestres(String tipoBico, String formatoAsas, String habitat, boolean podeVoar)
    {  
       super(tipoBico, formatoAsas);
       this.habitat = habitat;
       this.podeVoar = podeVoar;
    }
    
    public String getHabitat()
    {
        return habitat;
    }
    
    public Boolean getPodeVoar()
    {
        return podeVoar;
    }
    
    public void setHabitat(String habitat)
    {
        this.habitat = habitat;
    }
    
    public void setPodeVoar(Boolean podeVoar)
    {
        this.podeVoar = podeVoar;
    }
    
    public void porOvos()
    {
        System.out.println("Colocando ovos....");
    }
    
    public void Cantar()
    {
        System.out.println("Cantando....");
    }
    
    
    
}
