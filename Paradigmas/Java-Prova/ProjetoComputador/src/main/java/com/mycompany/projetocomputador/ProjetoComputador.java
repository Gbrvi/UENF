/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.projetocomputador;

/**
 *
 * @author gvalm
 */
public class ProjetoComputador {

    public static void main(String[] args) {
        System.out.println("Gabriel Almeida - UENF - CCT - CC!");
        
        System.out.println("----------------------COMPUTADOR---------------------------");

        
        Computador comp = new Computador(8, 510);
        
        System.out.println("O computador possui " + comp.getMemoriaRam() + "G de RAM e " + comp.getArmazenamento() + "G de armazenamento");
        
        comp.Ligar();
        comp.Desligar();
        
        System.out.println("----------------------COMP PORTATIL---------------------------");
        
        ComputadorPortatil comPort = new ComputadorPortatil(16, 1000, true, 4400 );
        
        System.out.println("O touchpad esta ligado? " + comPort.getTouchpad()+ "| Possui " + comPort.getCapacidadeBateria() + "mAh");
        
        comPort.Guardar();
        comPort.Carregar();
        
        
        System.out.println("----------------------CELULAR---------------------------");

        
        Celular celular = new Celular(16, 1000, true, 4400, 50, true);
        
        System.out.println("Camera de " + celular.getCamera()+ "MPX | Tem impressao digital? " + celular.getImpressaoDigital());
        
        celular.TirarFoto();
        celular.FazerChamada();
        
    }
}
