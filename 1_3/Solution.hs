sumcos n = sumcos' n (cos n) (cos n)
sumcos' 1 i j = i / j;
sumcos' n i j = sumcos' (n - 1) (cos ((acos i) + n - 1)) (j + (cos (n - 1)))
  {-- Не совсем то. Потому что acos i вовсе не даст вам то что вы хотите, полчится число от 0 до 2*pi а вовсе не сумма первых целых чисел --}