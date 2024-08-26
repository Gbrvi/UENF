public class Funcionarios
{
    public int ID;
    public string nome;
    public string funcao;

    private static int contadorID = 0;
    public Funcionarios(string nome, string funcao)
    {
        this.ID = contadorID++;
        this.nome = nome;
        this.funcao = funcao;
    }

    public int getID() { return ID; }
}


public class GestaoUsuarios
{
    public List<Funcionarios> funcionarios;


    public GestaoUsuarios()
    {
        this.funcionarios = new List<Funcionarios>();
    }

    public void addFuncionario(Funcionarios funcionario)
    {
        funcionarios.Add(funcionario);
    }

    public bool popFuncionario(Funcionarios funcionario)
    {
        try
        {
            funcionarios.Remove(funcionario);
            Console.WriteLine("Funcionario removido! ");
            return true;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public bool UpdateFuncionario(int ID, string newfunc)
    {
        foreach (var func in funcionarios)
        {
            if (func.ID == ID)
            {
                func.funcao = newfunc;
                Console.WriteLine("Nova função atribuida");
                return true;
            }
        }  
        Console.WriteLine("Funcionario nao encontrado! ");
        return false;
      
    }

    public void ExibirFuncionarios()
    {
        foreach (var f in funcionarios)
        {
            Console.WriteLine($"{f.ID} -- {f.nome} -- {f.funcao}");
        }
    }
}


class Program
{
    static void Main(string[] args)
    {
        GestaoUsuarios gestao = new GestaoUsuarios();

        Funcionarios func1 = new Funcionarios("Carlos", "Gerente");
        Funcionarios func2 = new Funcionarios("Ana", "Assistente");
        Funcionarios func3 = new Funcionarios("Carol", "Assistente");

        gestao.addFuncionario(func1);
        gestao.addFuncionario(func2);
        gestao.addFuncionario(func3);


        gestao.ExibirFuncionarios();

        gestao.UpdateFuncionario(2, "Coordenadora");

        gestao.ExibirFuncionarios();
    }
}