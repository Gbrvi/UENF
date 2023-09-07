/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.projetocomputador;

/**
 * @author gvalm
 */
public class Celular extends ComputadorPortatil{
    
    private int camera;
    private boolean impressaoDigital;
    
    public Celular(double memoriaRam, double armazenamento, boolean touchpad, double capacidadeBateria, int camera, boolean impressaoDigital)
    {
        super(memoriaRam, armazenamento, touchpad, capacidadeBateria);
        this.camera = camera;
        this.impressaoDigital = impressaoDigital;
    }
    
    public int getCamera()
    {
        return camera;
    }
    
    public boolean getImpressaoDigital()
    {
        return impressaoDigital;
    }
    
    public void setCamera(int camera)
    {
        this.camera = camera;
    }
    
    public void setImpressaoDigital(boolean impressao)
    {
        this.impressaoDigital = impressao;
    }
    
    public void TirarFoto()
    {
        System.out.println("Tirando foto com camera de " + getCamera() + "MP");
    }
    
    public void FazerChamada()
    {
        System.out.println("Fazendo chamada...");
    }
    
}