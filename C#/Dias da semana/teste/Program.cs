using System;

namespace teste
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite um número correspondente ao dia da semana:");

            int x = int.Parse(Console.ReadLine());
            string dia;

            switch (x)
            {
                case 1:
                    dia = "domingo";
                    break;
                case 2:
                    dia = "segunda";
                    break;
                case 3:
                    dia = "terça";
                    break;
                case 4:
                    dia = "quartou";
                    break;
                case 5:
                    dia = "quinta";
                    break;
                case 6:
                    dia = "sexta";
                    break;
                case 7:
                    dia = "sabado";
                    break;
                default:
                    dia = "valor inválido";
                    break;
            }

            Console.WriteLine("Dia da semana = " + dia);
            Console.ReadLine();

        }
    }

}
    

