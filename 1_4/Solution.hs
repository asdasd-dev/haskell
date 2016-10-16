fact n = fact' n 1
fact' 1 p = p
fact' n p = fact' (n - 1) (n * p)
sumfact n = sumfact' n (fact n)
sumfact' 1 j = j;
sumfact' n j = sumfact' (n - 1) (j + fact(n - 1))
{-- неэффективно --}