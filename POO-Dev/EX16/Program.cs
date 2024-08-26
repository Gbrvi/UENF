using System;
using System.Collections.Generic;

public class Caixa<T>
{
    private List<T> _list;

    public Caixa()
    {
        _list = new List<T>();
    }

    public void AddItem(T item)
    {
        _list.Add(item);
    }

    public bool PopItem(T item)
    {
        if (_list.Contains(item))
        {
            _list.Remove(item);
            return true;
        }
        return false;
    }

    public void ExibirItem()
    {
        foreach (T item in _list)
        {
            Console.WriteLine(item);
        }
    }

}

class Program
{
    static void Main(string[] args)
    {
        Caixa<string> caixaString = new Caixa<string>();

        caixaString.AddItem("a");
        caixaString.AddItem("b");
        caixaString.AddItem("c");

        caixaString.ExibirItem();


        Caixa<float> caixaFloat = new Caixa<float>();

        caixaFloat.AddItem(1.1f);
        caixaFloat.AddItem(2.1f);
        caixaFloat.AddItem(5.1f);

        caixaFloat.ExibirItem();




    }

}
  
