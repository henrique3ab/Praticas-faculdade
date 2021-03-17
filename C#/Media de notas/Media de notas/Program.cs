using System;

namespace Media_de_notas
{
    class Program
    {
        static void Main(string[] args)
        {
            double nota1;
            double nota2;
            double media;
            int novoCalculo = 1;

            while (novoCalculo == 1)
            {

                Console.WriteLine("Digite a nota da primeira avaliação: 0-10");
                nota1 = int.Parse(Console.ReadLine());

                while (nota1 < 0 || nota1 > 10)
                {
                    Console.WriteLine("Nota inválida. Digite uma nota válida");
                    nota1 = double.Parse(Console.ReadLine());
                }
                Console.WriteLine("Digite a nota da segunda avaliação: 0-10");
                nota2 = int.Parse(Console.ReadLine());

                while (nota2 < 0 || nota2 > 10)
                {
                    Console.WriteLine("Nota inválida. Digite uma nota válida");
                    nota2 = double.Parse(Console.ReadLine());
                }

                media = (nota1 + nota2) / 2;
                Console.WriteLine("A media semestral é: \n" + media);


                Console.WriteLine("Novo cálculo: (1- sim  2-não");
                novoCalculo = int.Parse(Console.ReadLine());

            }
        }
    }
}
