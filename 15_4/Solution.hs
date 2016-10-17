calculate lis x = foldr (\f tup -> let
                                     (ff, fs) = f (fst tup)
                                   in (ff, fs + snd tup)) (x, 0) lis