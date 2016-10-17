doFives 1 = 5
doFives n = doFives(n - 1) * 10 + 5
  {-- не очень эффективно --}

fives = map (doFives) [1..]