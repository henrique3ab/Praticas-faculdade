using System;

namespace teste
{
    class Program
    {
        static void Main(string[] args)
        {
            double minutos = 100;
            double pagar = 50;
            double ex;
            double consumo = 0;

            Console.WriteLine("Qual foi seu consumo este mes?");
            consumo = double.Parse(Console.ReadLine());

            if (consumo > minutos)
            {
                ex = consumo - minutos;
                pagar = 50 + (ex * 2);

                Console.WriteLine("Valor a pagar: R$" + pagar);
            }
            else
            {
                Console.WriteLine("Valor a pagar: R$" + pagar);
            }
        }
    }
}
