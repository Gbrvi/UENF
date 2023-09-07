/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.projetodocente;

/**
 *
 * @author gvalm
 */
public class ProjetoDocente {

    public static void main(String[] args) {
        
        System.out.println("-------------Pessoa--------------");
        Pessoa pessoa = new Pessoa("Diogo", "14147821");
        pessoa.Andar();
        pessoa.Fala();
        
        System.out.println("----------------Docente-------------");
        
        Docente docente = new Docente("Daddy", "102155235", "filosofia", "metafisica");
        
        docente.Andar();
        docente.corrigirProva();
        docente.lecionar();
        
        System.out.println("----------------ProfessorIdiomas-------------");

        ProfessorIdioma professor = new ProfessorIdioma("Antonio", "99999999", "letras", "ItalianoB2" , "italiano", "CCAA");
        
        professor.Andar();
        professor.Fala();
        
        professor.lecionar();
        professor.corrigirProva();
        
        professor.avaliarPronuncia();
        professor.passarExercicio();
    }
}
