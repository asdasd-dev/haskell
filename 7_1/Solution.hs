isSame (x:xs) = (filter (/= x) (xs)) == []

isRow xs = all (\x -> x >= 0 && x < len) list
                where list = map (\x -> x - minimum xs) xs
                      len = length list

isLine xs | length xs < 2 = False
          | isSame fArgs = isRow sArgs
          | isSame sArgs = isRow fArgs
          | otherwise = False
                where fArgs = map fst xs
                      sArgs = map snd xs