public class Animal
{
    public virtual void EmitirSom()
    {
        Console.WriteLine("Animal aleatorio fazendo som");
    }
}

public class Gato : Animal
{
    public override void EmitirSom()
    {
        Console.WriteLine("MEOWWWW");
    }
}

public class Cachorro: Animal
{
    public override void EmitirSom()
    {
        Console.WriteLine("Auuuuuuuu");
    }
}

public class Program
{
    static void Main(string[] args)
    {
        Animal animal = new Animal();
        Gato gato = new Gato();
        Cachorro cachorro = new Cachorro();

        animal.EmitirSom();
        gato.EmitirSom();
        cachorro.EmitirSom();
    }
}