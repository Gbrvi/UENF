

package com.mycompany.projetorede;

/**
 *
 * @author Gabriel Almeida
 */
public class Telecomunicacoes{
    private String meioTransmissao;
    private double latencia;
    
    public Telecomunicacoes(String meioTransmissao, double latencia)
    {
        this.meioTransmissao = meioTransmissao;
        this.latencia = latencia;
    }
    
    public String getMeioTransmissao()
    {
        return meioTransmissao;
    }
    
    public double getLatencia()
    {
        return latencia;
    }
    
    public void setMeioTransmissao(String meioTransmissao)
    {
        this.meioTransmissao = meioTransmissao;
    }
    
    public void setLatencia(double latencia)
    {
        this.latencia = latencia;
    }
    
    public void EstabelerConexao()
    {
        System.out.println("Estabelecendo conexão...");
    }
    
    public void EnviarDados()
    {
        System.out.println("Enviando dados");
    }
}