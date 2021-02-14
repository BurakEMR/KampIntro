using System;

namespace MyDictionary
{
    class Program
    {
        static void Main(string[] args)
        {
            MyDictionary<string> car = new MyDictionary<string>();
            car.Add("Jaguar");
            car.Add("Bmw");
            car.Add("Mercedes");
            car.Add("Corvette");
            Console.WriteLine("MyDicitonary"+ " " +car.Count+ " " + "elemanlıdır.");

        }
    }
   
    
}
