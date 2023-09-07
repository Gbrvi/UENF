/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetoverdura;

/**
 *
 * @author Gabriel Almeida
 */
public class PlantaComestivel {
    private String nome;
    private String especie;
    
    public PlantaComestivel(String nome, String especie)
    {
        this.nome = nome;
        this.especie= especie;
    }
    
    public String getNome()
    {
        return nome;
    }
    
    public String getEspecie()
    {
        return especie;
    }
    
    public void setNome(String nome)
    {
        this.nome = nome;
    }
    
    public void setEspecie(String especie)
    {
        this.especie = especie;
    }
    
    public void Plantar()
    {
        System.out.println("Plantando " + getNome());
    }
    
    public void Colher()
    {
        System.out.println("Colhendo " + getNome());
    }
}
