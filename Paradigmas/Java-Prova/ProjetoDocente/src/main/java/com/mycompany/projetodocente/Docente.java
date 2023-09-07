/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetodocente;
public class Docente extends Pessoa{
    
    private String formacao;
    private String disciplina;
    
    public Docente(String nome, String CPF, String formacao, String disciplina)
    {
        super(nome, CPF);
        this.formacao = formacao;
        this.disciplina = disciplina;
     
    }

    public String getFormacao()
    {
        return formacao;
    }
    
    public String getDisciplina()
    {
        return disciplina;
    }
    
    public void setFormacao(String formacao)
    {
        this.formacao= formacao;
    }
    
    
    public void setDisciplina(String disciplina)
    {
        this.disciplina = disciplina;
    }
    
    public void lecionar()
    {
        System.out.println("Estou dando aula de " + disciplina);
    }
    
    public void corrigirProva()
    {
        System.out.println("Estou corrigindo prova de " + disciplina);
    }  
}