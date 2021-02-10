using System;

namespace Donguler
{
    class Program
    {
        static void Main(string[] args)
        {
            //döngüleri birbirine benzeyen işlemleri gerçekleştirmek için kullanırız.

            string kurs1 = "Yazılım Geliştirici Yetiştirme Kampı";
            string kurs2 = "Programlamaya başlangıc için temel kurs";
            string kurs3 = "Java";
            string kurs4 = "Python";
            string kurs5 = "C++";

            Console.WriteLine(kurs1);
            Console.WriteLine(kurs2);
            Console.WriteLine(kurs3);
            Console.WriteLine(kurs4);
            Console.WriteLine(kurs5);


            //array-dizi üstteki şekilde karmaşık olmaması için dizi tanımlayıp döngüye soktuk.

            string[] kurslar = new string[] { "Yazılım Geliştirici Yetiştirme Kampı", "Programlamaya başlangıc için temel kurs", "Java", "Python", "C#" };


            for (int i = 0; i < kurslar.Length; i++)
            {
                Console.WriteLine(kurslar[i]);
            }

            Console.WriteLine("For bitti");

            foreach (string kurs in kurslar) //foreach: dizi temelli yapıları tek tek dönmeye yarar. Dizilere uygulanır.
            {
                Console.WriteLine(kurs);
            }


            Console.WriteLine("sayfa sonu-footer");
        }
    }
}
     