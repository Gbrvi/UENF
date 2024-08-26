using System;
using System.Collections.Generic;

public class Aluno
{
    public string nome;
    public int matricula;
    public float nota;

    public Aluno(string nome, int matricula, float nota)
    {
        this.nome = nome;
        this.matricula = matricula;
        this.nota = nota;
    }
    
    public void DadosAluno()
    {
        Console.WriteLine($"Nome: {nome}, Matrícula: {matricula}, Nota: {nota}");
    }


}


public class Escola
{
    public List<Aluno> alunos;

    public Escola()
    {
        alunos = new List<Aluno>();
    }

    public void AddAluno(Aluno aluno)
    {
        alunos.Add(aluno);
    }

    public void ExibirAlunos()
    {
        foreach (var aluno in alunos)
        {
            aluno.DadosAluno();
        }
    }

}

class Program
{
    static void Main(string[] args)
    {
        Aluno aluno1 = new Aluno("Enzo", 12124522, 5.8f);
        Aluno aluno2 = new Aluno("Tavares", 1111111, 5.78f);

        Escola escola1 = new Escola();

        escola1.AddAluno(aluno1);
        escola1.AddAluno(aluno2);

        escola1.ExibirAlunos();
    }
}