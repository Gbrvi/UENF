/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.projetoave;

/**
 *
 * @author Gabriel Almeida
 */
public class ProjetoAve {

    public static void main(String[] args) {
        System.out.println("-----------------\nGabriel Almeida - UENF - CCT - CC!\n--------------------");
        
        Ave ave = new Ave("sondador", "longas");
        
        System.out.println("Eu sou uma ave com o bico " + ave.getTipoBico() + " e com asas " + ave.getFormatoAsas());
        
        ave.Comer();
        ave.Mover();
        
        System.out.println("-----------------Ave terrestre--------------");
        
        AvesTerrestres terrestre = new AvesTerrestres("sondador", "longas","america", true);
        
        System.out.println("Eu sou uma ave  que vive em "+ terrestre.getHabitat() +  " e posso voar? " + terrestre.getPodeVoar());
        
        terrestre.porOvos();
        terrestre.Cantar();
    
        Passaro passaro = new Passaro("sondador", "curtas", "africa", false, 35.7, true);
        
        System.out.println("-----------------Passaro--------------");
        
        System.out.println("Eu sou um passaro com " + passaro.getTamanho() + " E eu tenho garras? " + passaro.getTemGarras());
        
        passaro.Voar();
        
        passaro.cantarMelodia();
    }
}
    
