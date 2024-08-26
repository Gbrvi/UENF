using System.Transactions;
using static System.Runtime.InteropServices.JavaScript.JSType;

public static class MatematicaUtil
{
    public static double CalcularQuadadro(double X)
    {
        return X * X;
    }

    public static double CalcularCubo(double X)
    {
        return X * X * X;
    }

    public static double CalcularRaizQuadrada(double X)
    {
        return Math.Sqrt(X);
    }
}


class Program
{
    static void Main(string[] args)
    {
        double X = 10;

        Console.WriteLine($"Quadrado de {X}: {MatematicaUtil.CalcularQuadadro(X)}");
        Console.WriteLine($"Cubo de {X}: {MatematicaUtil.CalcularCubo(X)}");
        Console.WriteLine($"Raiz quadrada de {X}: {MatematicaUtil.CalcularRaizQuadrada(X)}");
    }
}