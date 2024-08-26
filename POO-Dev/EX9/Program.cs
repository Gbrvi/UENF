
public interface Movimentavel
{
    public void Mover(int x, int y);
}

public interface Desenhavel
{
    public void Desenhar();
}

public class Personagem : Movimentavel, Desenhavel
{
    public void Mover(int x, int y)
    {
        Console.WriteLine($"Movendo para {x} {y}");
    }

    public void Desenhar()
    {
        Console.WriteLine("Desenhando......");
    }
}

public class Program
{
    static void Main(string[] args)
    {
        Personagem p1 = new Personagem();

        p1.Mover(5, 10);
        p1.Desenhar();
    }
}