using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static double Integral(Func<double, double> f, double a, double b)
        {

            double h = (b - a) / 100;
            double sum = 0;

            double fprev = f(a);
            double fmid = 0;

            for (int x = 1; x < 100; x++)
            {
                fmid = f(a + x * h);
                sum += (fmid + fprev) / 2 * h;
                fprev = fmid;
            }

            return sum;
        }

        static void Main(string[] args)
        {
            Console.WriteLine(Integral(x => x * x, 0, 1));
            Console.WriteLine(Integral(x => Math.Sqrt(x), 0, 1));
            Console.ReadLine();
        }
    }
}
