/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetoverdura;

/**
 *
 * @author Gabriel Almeida
 */
public class Verdura extends PlantaComestivel{
    private String cor;
    private String textura;
    
    public Verdura(String nome, String especie, String cor, String textura)
    {
        super(nome, especie);
        this.cor = cor;
        this.textura= textura;
    }
    
    public String getCor()
    {
        return cor;
    }
    
    public String getTextura()
    {
        return textura;
    }
    
    public void setCor(String cor)
    {
        this.cor = cor;
    }
    
    public void setTextura(String textura)
    {
        this.textura = textura;
    }
    
    public void Lavar()
    {
        System.out.println("Lavando... " + getNome());
    }
    
    public void Cortar()
    {
        System.out.println("Cortando..." + getNome());
    }
}
