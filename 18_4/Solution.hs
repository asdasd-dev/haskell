f1 <=< f2 = (\x -> let 
                    (f2f, f2s) = f2 x
                    (f1f, f1s) = f1 f2f
                   in (f1f, f1s + f2s))

calculate fs = foldr (<=<) (\x -> (x, 0)) fs