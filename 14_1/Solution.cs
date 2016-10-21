using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace mapHs
{
    class Program
    {
        static int[] filterArray(int[] a)
        {
            return (a.Select(x => x % 3 == 0 ? x % 10 : 3)).Where(x => x % 3 != 0).ToArray();
        }
        static void Main(string[] args)
        {
            int[] res = filterArray(new int[] { 114, 14, 13, 81, 33, 30, 1011 });
            for (int i = 0; i < res.Length; Console.Write("{0} ", res[i++]));
            Console.ReadLine();
        }
    }
}