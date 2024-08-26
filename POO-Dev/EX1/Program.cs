using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

// Gabriel Almeida

namespace Pessoa
{
    class Pessoa
    {
     // Definindo atributos com get e set
        public string nome { get; set; }
        public int idade { get; set; }
        // Construtor
        public Pessoa(string nome, int idade)
        {
            this.nome = nome;
            this.idade = idade;

        }
        // Metodo
        public void ExibirInfo()
        {
            Console.WriteLine($"Nome: {nome}");
            Console.WriteLine($"Idade: {idade}");

        }

    }


    class Ex1
    {
        static void Main( string[] args )
        {   // Instancia de pessoa
            Pessoa p1 = new Pessoa("Marcos Bruno", 20);
            //Utiliza metodo de pessoa
            p1.ExibirInfo();
        }
    }

  

}