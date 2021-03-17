using System;

namespace Programa_Temperatura
{
    class Program
    {
        static void Main(string[] args)
        {
            double grausC, grausF;
            char escolha = 's', wh = 'x', dw = 'y';



            Console.WriteLine("Como deseja que execute a conversão de Celsius para Fahrenheit?" + "/n Em while : (x)/n Ou Do While: (y)");
            wh = char.Parse(Console.ReadLine());
            dw = char.Parse(Console.ReadLine());



            if (wh == 'x')
            {
                while (escolha == 's')
                {
                    Console.WriteLine("Quantos graus está fazendo?");
                    grausC = double.Parse(Console.ReadLine());

                    grausF = (9 * grausC) / 5 + 32;

                    Console.WriteLine("A temperatura em Fahrenheit é: " + grausF);


                    Console.WriteLine("Deseja repetir: s/n ?");
                    escolha = char.Parse(Console.ReadLine());

                };


                if (dw == 'y')
                {
                    do
                    {
                        Console.WriteLine("Quantos graus está fazendo?");
                        grausC = double.Parse(Console.ReadLine());

                        grausF = (9 * grausC) / 5 + 32;

                        Console.WriteLine("A temperatura em Fahrenheit é: " + grausF);


                        Console.WriteLine("Deseja repetir: s/n ?");
                        escolha = char.Parse(Console.ReadLine());

                    } while (escolha == 's');
                };

                Console.ReadKey();

            }
        }
    }
}

