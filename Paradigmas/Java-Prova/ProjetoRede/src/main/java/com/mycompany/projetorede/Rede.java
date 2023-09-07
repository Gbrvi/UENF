/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetorede;

/**
 *
 * @author gvalm
 */
public class Rede extends Telecomunicacoes{
    private String nomeRede;
    private String protocoloRede;
    
    public Rede(String meioTransmissao, double latencia, String nomeRede, String protocoloRede)
    {
        super(meioTransmissao, latencia);
        this.nomeRede = nomeRede;
        this.protocoloRede = protocoloRede;
    }
    
    public String getNomeRede()
    {
        return nomeRede;
    }
    
    public String getProtocoloRede()
    {
        return protocoloRede;
    }
    
    public void setNomeRede(String nomeRede)
    {
        this.nomeRede = nomeRede;
    }
    
    public void setProtocoloRede(String protocoloRede)
    {
        this.protocoloRede = protocoloRede;
    }
    
    
    public void ConectarDispositivo()
    {
        System.out.println("Conectndo ao dispositivo...");
    }
    
    public void DesconectarDispositivo()
    {
        System.out.println("Desconectando o dispositivo....");
    }
}
