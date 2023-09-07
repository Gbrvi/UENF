/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetoverdura;

/**
 *
 * @author gvalm
 */
public class Raiz extends Verdura{
    private double comprimento;
    private double valorCalorico;
    
    public Raiz(String nome, String especie, String cor, String textura, double comprimento, double valorCalorico)
    {
        super(nome, especie, cor, textura);
        this.comprimento = comprimento;
        this.valorCalorico = valorCalorico;
    }
    
    public double getComprimento()
    {
        return comprimento;
    }
    
    public double getValorCalorico()
    {
        return valorCalorico;
    }
    
    public void setComprimento(double comprimento)
    {
        this.comprimento = comprimento;
    }
    
    public void setValorCalorico(double valorCalorico)
    {
        this.valorCalorico = valorCalorico;
    }
    
    public void Descascar()
    {
        System.out.println("Descarcando a raiz " + getNome());
    }
    
    public void Cozinhar()
    {
        System.out.println("Cozinhando... " + getNome());
    }
}