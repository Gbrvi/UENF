using System;

public class Calculadora
{
    public double Somar(double a, double b)
    {
        return a + b;
    }

    public double Somar(int a, int b)
    {
        return a + b;
    }

    public double Subtrair(double a, double b)
    {
        return a - b;
    }

    public double Subtrair(int a, int b)
    {
        return a - b;
    }


    public double Multiplicar(double a, double b)
    {
        return a * b;
    }

    public double Multiplicar(int a, int b)
    {
        return a * b;
    }


    public double Dividir(double a, double b)
    {
        return a / b;
    }

    public double Dividir(int a, int b)
    {
        return a / b;
    }
}

class EX4
{
    public static void Main(string[] args)
    {
        Calculadora calculadora = new Calculadora();

        Console.WriteLine(calculadora.Somar(5, 5)); // Vai realizar a operação onde no metodo que utiliza int

        Console.WriteLine(calculadora.Somar(5.1, 5.1)); // Vai realizar a operação onde no metodo que utiliza double

        Console.WriteLine(calculadora.Subtrair(3, 7));

        Console.WriteLine(calculadora.Multiplicar(3, 2.5));

        Console.WriteLine(calculadora.Dividir(14, 7));


    }
}