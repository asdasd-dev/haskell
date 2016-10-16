numPath n = numP' n' n' n
               where
                 n' = n - 1
numP' 0 j n = 1
numP' i 0 n = 1
numP' i j n = if i == 0 && j == 0 then
                1
              else
                numP' i' j' n + numP' i' j n + numP' i j' n
                  where
                    i' = i - 1
                    j' = j - 1