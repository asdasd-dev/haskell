b n = b1 n' r'
        where r' = let
                     roun = round (logBase 2 n)
  {-- Лучше как то обойтись без логарифма. Для такой простой фунцкии вызвать logBase это мб слишком большие накладные расходы --}
                   in if 2^roun > n then
                        roun - 1
                      else
                        roun
              n' = n - 2^r'
b1 0 j = True
b1 i (-1) = False
b1 i j = i - 2^j == 0 || b1 i (j - 1)
