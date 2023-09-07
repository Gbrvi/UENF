/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.projetorede;

/**
 *
 * @author Gabriel Almeida
 */
public class ProjetoRede {

    public static void main(String[] args) {
        System.out.println("----------------------------------------\nGabriel Almeida - UENF - CCT - CC!\n----------------------------------------");
        System.out.println("-----------Telecomuncacoes-----------");
        
        Telecomunicacoes telecom = new Telecomunicacoes("fibraOptica", 5.7);
        
        System.out.println("Telecom: Meio de transmissao: " + telecom.getMeioTransmissao() + " Latencia de : " + telecom.getLatencia() + "ms");
        
        telecom.EnviarDados();
        telecom.EstabelerConexao();
        
        System.out.println("-----------Rede-----------");
        
        Rede rede = new Rede("Cabo Coaxial", 7.45, "WifiFluzudo", "TCP-IP");
        
        System.out.println("Rede: Nome da rede: " + rede.getNomeRede()+ " Protocolo : " + rede.getProtocoloRede());

        rede.ConectarDispositivo();
        rede.DesconectarDispositivo();
        
        System.out.println("-----------------LAN--------------");
        
        LAN lan = new LAN("CaboParTrancado", 5.7, "Caranguejos", "TCP-IP", 4, 350);
        
        System.out.println("Ha " + lan.getDispositivoConect() + " Conectados | Velocidade maxima: " + lan.getVelocidade());
        
        lan.VerificarVelocidade();

        
    }
}
