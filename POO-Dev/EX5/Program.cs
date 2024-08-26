using System;
using static System.Runtime.InteropServices.JavaScript.JSType;
using System.Reflection;
using System.Text.RegularExpressions;

public class Veiculo
{
    protected string marca {get; set;}
    protected string modelo {get; set;}
    public Veiculo(string marca, string modelo)
    {
        this.marca = marca;
        this.modelo = modelo;
    }
}

public class Carro : Veiculo
{
    protected string placa { get; set;}
    protected string cor { get; set; }
    public Carro(string marca, string modelo, string placa, string cor) : base(marca, modelo)
    {
        this.placa = placa;
        this.cor = cor;
    }
    public void Dirigir()
    {
        Console.WriteLine("Vrummmmmm");
    }
    public void Dados()
    {
        Console.WriteLine($"Marca: {marca}, Modelo: {modelo}, placa: {placa}, cor: {cor}");
    }
}


public class Program
{
    static void Main(string[] args)
    {
        Carro car = new Carro("A", "B", "AAA741", "Azul");

        car.Dirigir();
        car.Dados();
    }
}