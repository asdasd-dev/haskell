using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace haskell
{
    class Program
    {
        static bool isEveryContain7(int[][] m)
        {
            return m.All(element => element.Any(x => x == 7));
        }
        static void Main(string[] args)
        {
            int[][] m = new int[3][];
            m[0] = new int[] { 1, 3, 5, 7, 9 };
            m[1] = new int[] { 0, 2, 4, 6, 7 };
            m[2] = new int[] { 11, 22, 7 };
            Console.WriteLine(isEveryContain7(m));
            Console.ReadLine();
        }
    }
}