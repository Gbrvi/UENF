public abstract class FormaGeometrica
{
    public abstract double CalcularArea();
}


public class Quadrado : FormaGeometrica
{
    public double x;

    public Quadrado(double x)
    {
        this.x = x;
    }

    public override double CalcularArea()
    {
        return x * x;
    }
}

public class Circulo : FormaGeometrica
{
    public double raio;

    public Circulo(double raio)
    {
        this.raio = raio;
    }

    public override double CalcularArea()
    {
        return 3.14 * raio * raio;
    }

}


class Program
{
    static void Main(string[] args)
    {
        Quadrado quadrado = new Quadrado(3.0);
        Console.WriteLine($"Área do quadrado: {quadrado.CalcularArea()}");

       
        Circulo circulo = new Circulo(5.0);
        Console.WriteLine($"Área do círculo: {circulo.CalcularArea()}");
    }
}