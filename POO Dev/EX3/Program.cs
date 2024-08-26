// See https://aka.ms/new-console-template for more information
using System;

class Produto
{
    private string nome { get; set; }
    private float preco { get; set; }
    private int quantidade { get; set; }



    public Produto(string nome, float preco, int quantidade)
    {
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    public void ConsultarInfo()
    {
        Console.WriteLine($"----------------------");
        Console.WriteLine($"Informações do Produto:");
        Console.WriteLine($"Nome:  {this.nome}");
        Console.WriteLine($"Preço: R$ {this.preco:F2}");
        Console.WriteLine($"Quantidade: {this.quantidade}");

    }


}

class Ex3
{
    static void Main(string[] args)
    {
        Produto p1 = new Produto("Controle", 10, 100);
        Produto p2 = new Produto("Celular", 2350, 50);
        Produto p3 = new Produto("Caderno", 5.2f, 10);
        Produto p4 = new Produto("Fone", 15.12f, 2);

        p1.ConsultarInfo();
        p2.ConsultarInfo();
        p3.ConsultarInfo();
        p4.ConsultarInfo();


    }
}