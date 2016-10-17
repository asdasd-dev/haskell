isMagic xss = isMagic' xss (sum (head xss))

isMagic' xss num = all (== num) (map (\x -> sum x) xss) && -- rows equality
                    sumCol xss num && -- colums equality
                     num == headDiagSum xss (len - 1) (len - 1) && -- head diag equality
                      num == secDiagSum xss (len - 1) 0 -- sec diag equelity
                        where len = length xss
                      
sumCol xss num = all (== num) (map (\el -> (sumOneCol xss (len - 1) el)) [0..len - 1])
                    where len = length xss

sumOneCol xss x y | x < 0 = 0
                  | otherwise = xss !! x !! y + sumOneCol xss (x - 1) y

headDiagSum xss x y | x < 0 = 0
                    | otherwise = xss !! x !! y + headDiagSum xss (x - 1) (y - 1)

secDiagSum xss x y | x < 0 = 0
                   | otherwise = xss !! x !! y + secDiagSum xss (x - 1) (y + 1)