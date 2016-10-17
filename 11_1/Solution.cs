using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication2
{
    class Program
    {
        static Func<int, bool> CheckDigitCurried(int f)
        {
            return y => { return y.ToString().Contains(f.ToString()); };
        }
        static void Main(string[] args)
        {
            int[] a = { 15732, 5345762, 3567454 };
            bool b = a.All(CheckDigitCurried(7));
            Console.WriteLine(b);
            Console.ReadLine();
        }
    }
}
