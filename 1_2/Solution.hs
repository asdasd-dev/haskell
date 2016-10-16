g n = g1 1 n where 
 g1 i 1 = i 
 g1 i n = i + 10 * (g1 (i + 1) (n - 1))