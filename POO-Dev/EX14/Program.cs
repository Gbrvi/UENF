public class Livros
{
    public string nome;
    public int edicao;
    public float valor;
    public Livros(string nome, int edicao, float valor)
    {
        this.nome = nome;
        this.edicao = edicao;
        this.valor = valor;
    }
}

public class Biblioteca
{
    public List<Livros> livros;


    public Biblioteca()
    {
        this.livros = new  List<Livros> ();
    }

        public bool AddLivro(Livros livro)
    {
        try
        {
            livros.Add(livro);
            return true;

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public bool popLivro(Livros livro)
    {
        if (livros.Contains(livro))
        {
            livros.Remove(livro);
            return true;
        }

        else
        {
            return false;
        }

    }

    public void ExibirLivros()
    {
        foreach (var livro in livros)
        {
            Console.Write($"Titulo: {livro.nome} | Edicação {livro.edicao} | Valor {livro.valor} \n");
        }
    }
}


class Program
{
    static void Main(string[] args)
    {
        Livros livro1 = new Livros("O Senhor dos Anéis", 1, 59.90f);
        Livros livro2 = new Livros("Harry Potter", 2, 39.90f);
        Livros livro3 = new Livros("O Hobbit", 3, 29.90f);

        Biblioteca biblioteca = new Biblioteca();

        biblioteca.AddLivro(livro1);
        biblioteca.AddLivro(livro2);
        biblioteca.AddLivro(livro3);

       biblioteca.ExibirLivros();

        biblioteca.popLivro(livro3 );

        biblioteca.ExibirLivros();
    }
}
