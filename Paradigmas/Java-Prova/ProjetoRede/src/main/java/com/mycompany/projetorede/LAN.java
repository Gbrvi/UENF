/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetorede;

/**
 *
 * @author gvalm
 */
public class LAN extends Rede{
    private int dispositivosConectados;
    private double velocidade;
    
    public LAN(String meioTransmissao, double latencia, String nomeRede, String protocoloRede, int dispositivosConectados, double velocidade)
    {
        super(meioTransmissao, latencia, nomeRede, protocoloRede);
        this.dispositivosConectados = dispositivosConectados;
        this.velocidade = velocidade;
    }
    
    public int getDispositivoConect()
    {
        return dispositivosConectados ;
    }
    
    public double getVelocidade()
    {
        return velocidade;
    }
    
    public void setDispositivosConectados(int dispositivos)
    {
        this.dispositivosConectados = dispositivos;
    }
    
    public void setVelcoidade(double velocidade)
    {
        this.velocidade = velocidade;
    }
    
    public void VerificarVelocidade()
    {
        System.out.println("Verificando conexao...Velocidade esperada: " + getVelocidade() + "Mb/s");
    }
    
    public void GerenciarAcesso()
    {
        System.out.println("Gerenciando acesso a rede...");
    }
}
