/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetodocente;

/**
 *
 * @author gvalm
 */
public class ProfessorIdioma extends Docente
{
    private String idioma;
    private String escola;
    
    public ProfessorIdioma(String nome, String CPF, String formacao, String disciplina, String idioma, String escola)
    {
        super(nome, CPF, formacao, disciplina);
        this.idioma = idioma;
        this.escola = escola;
    }
    
    public String getIdioma()
    {
        return idioma;
    }
    
    public String getEscola()
    {
        return escola;
    }
    
    public void setEscola(String escola)
    {
        this.escola = escola;
    }
    
    public void setIdioma(String idioma)
    {
        this.idioma = idioma;
    }
    
    public void avaliarPronuncia()
    {
        System.out.println("Avaliando a pronuncia dos alunos de " + getIdioma());
    }
    
    public void passarExercicio()
    {
        System.out.println("Passando exercicios de " + getIdioma());
    }
    
}
