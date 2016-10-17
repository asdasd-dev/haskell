diagonalSums xs = diagonalSums' xs (length xs - 1) 0

diagonalSums' xs x y | x < 0 = []
                     | x > y = (oneDiagSum xs x y) : diagonalSums' xs x (y + 1)
                     | x <= y = (oneDiagSum xs x y) : diagonalSums' xs (x - 1) y

oneDiagSum xs x y | x < 0 || y < 0 = 0
                  | otherwise = xs !! x !! y + oneDiagSum xs (x - 1) (y - 1)