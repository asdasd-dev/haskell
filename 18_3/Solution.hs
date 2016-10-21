newBr (x:xs) =  ("[" ++ x ++ "]") : newBr xs
brackets = "[]" : newBr brackets