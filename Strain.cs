using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StrainApplication
{
    internal class Strain
    {
        static public bool Pari(int number) { return number % 2 == 0; }
        static public bool Dispari(int number) { return number % 2 != 0; }

        static public List<int> Keep(List<int>? ints, Predicate<int> predicate)
        {
            List<int> list = new();

            foreach(int number in ints)
            {
                if(predicate(number))
                {
                    list.Add(number);
                }
            }
            return list;
        }

        static public List<int> Discard(List<int>? ints, Predicate<int> predicate)
        {
            List<int> list = new();

            foreach(int number in ints)
            {
                if(predicate(number))
                {
                    list.Add(number);
                }
            }
            return list;
        }
    }
}
