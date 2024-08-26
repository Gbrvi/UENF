public enum DiasDaSemana
{
    Domingo,
    SegundaFeira,
    TercaFeira,
    QuartaFeira,
    QuintaFeira,
    SextaFeira,
    Sabado
}


public class Agenda
{
    public void AdicioanrTarefa(DiasDaSemana dia, string tarefa)
    {
        Console.WriteLine($"Tarefa {tarefa} marcada para dia {dia}");

    }
}

class Program
{
    static void Main(string[] args)
    {
        Agenda agenda = new Agenda();

        agenda.AdicioanrTarefa(DiasDaSemana.Sabado, "Balada");
    }
}