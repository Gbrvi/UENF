/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.projetoverdura;

/**
 *
 * @author Gabriel Almeida
 */
public class ProjetoVerdura {

    public static void main(String[] args) {
        System.out.println("----------------------------------\nGabriel Almeida - UENF - CCT - CC \n ----------------------------------");
        
        System.out.println("\n------------------Planta comestivel-------------------");
        
        PlantaComestivel feijao = new PlantaComestivel("feijao", "Phaseolus vulgaris");
        
        feijao.Plantar();
        feijao.Colher();
        
        System.out.println("\n------------------Verdura-------------------");
        
        Verdura alface = new Verdura("alface", "Lactuca sativa", "verde", "crocante");
        
        alface.Plantar();
        alface.Colher();
        
        alface.Lavar();
        alface.Cortar();
       
        System.out.println("\n------------------Batata-------------------");

        
        Raiz batata = new Raiz("batata", "Solanum tuberosum", "amarela", "macio", 10.7, 50.74);

        batata.Plantar();
        batata.Colher();
        
        batata.Lavar();
        batata.Descascar();
        batata.Cortar();
        
        batata.Cozinhar();
        
        
    }
}
