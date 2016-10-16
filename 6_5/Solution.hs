repeatFunc f n = g n where
 g 1 = f
 g n = g (n - 1) . f