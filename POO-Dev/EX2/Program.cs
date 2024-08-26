// See https://aka.ms/new-console-template for more information
using System;

class ContaBancaria
{
    private float saldo {get; set;}

    public ContaBancaria(float saldo)
    {
        this.saldo = saldo;
    }

    public void Depositar(float saldo)
    {
        this.saldo += saldo;
    }

    public void Sacar(float valor)
    {
       this.saldo -= valor;   
    }

    public void ConsultarSaldo()
    {
        Console.WriteLine($"Seu saldo é: {this.saldo}");
    }

}

class Ex2
{
    static void Main(string[] args)
    {
        ContaBancaria con = new ContaBancaria(100);

        con.ConsultarSaldo();

        con.Depositar(100);

        con.ConsultarSaldo();

        con.Sacar(50);

        con.ConsultarSaldo();

    }
}