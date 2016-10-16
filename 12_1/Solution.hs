cross n = cross' 1 n

cross' x n | x == n + 1 = []
          | otherwise = map (\y -> if y == x || n - y + 1 == x then 1 else 0) [1..n] : cross' (x + 1) n
	{-- не совсем эффективно --}