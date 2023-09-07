/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetodocente;

/**
 *
 * @author gvalm
 */
public class Pessoa{
    private String nome;
    private String cpf;
    
    public Pessoa(String nome, String CPF)
    {
        this.nome = nome;
        this.cpf = CPF;
    }
    
    public String getNome()
    {
        return nome;
    }
    
    public String getCPF()
    {
        return cpf;
    }
    
    public void setNome(String nome)
    {
        this.nome = nome;
    }
    
    public void setCPF(String CPF)
    {
        this.cpf = CPF;
    }
    
    public void Andar()
    {
        System.out.println("Andando...");
    }
    
    public void Fala()
    {
        System.out.println("Estou falando...");
    }
}