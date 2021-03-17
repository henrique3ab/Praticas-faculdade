using System;

namespace Exercicio_while
{
    class Program
    {
        static void Main(string[] args)
        {
            int x;
            int y;
            Console.WriteLine("Digite um valor para x: ");
            x = int.Parse(Console.ReadLine());
            Console.WriteLine("Digite um valor para y: ");
            y = int.Parse(Console.ReadLine());

            while (x != y)
            {
                if (x > y)
                {
                    Console.WriteLine("x é maior que y");
                    Console.ReadLine();

                }
                else
                {

                    Console.WriteLine("y é maior que x");
                    Console.ReadLine();
                }
            }
            Console.ReadLine();

            Console.WriteLine("Números iguais, fim do programa.");
            
        }
    }
    }



 