public class Motor
{
    public bool Ligado { get; set; }
    public int Potencia { get; set; }

    public Motor(int potencia)
    {
        Ligado = false;
        Potencia = potencia;
    }

    public void Ligar()
    {
        if (!Ligado)
        {
            Console.WriteLine("Vrummmmmmmm...Motor ligando");
            Ligado = true;
        }
        else
        {
            Console.WriteLine("Já está ligado o carro");
        }
    }

    public void Desligar()
    {
        if (Ligado)
        {
            Console.WriteLine("Desligando....");
            Ligado = false;
        }
        else
        {
            Console.WriteLine("Já está desligado!");
        }
    }

    public void Dados()
    {
        Console.WriteLine($"Potencia: {Potencia} - Ligado? {Ligado}");
    }
}

public class Carro
{
    public Motor Motor { get; set; }
    public Carro(Motor motor)
    {
        Motor = motor;
    }

    public void LigarMotor()
    {
        Motor.Ligar();
    }

    public void DesligarMotor()
    {
        Motor.Desligar();
    }

    public void ExibirDadosMotor()
    {
        Motor.Dados();
    }
}

class Program
{
    static void Main(string[] args)
    {
        Motor motor1 = new Motor(120);
        Carro car = new Carro(motor1);

        car.LigarMotor();
        car.DesligarMotor();
        car.ExibirDadosMotor();

    }
}

