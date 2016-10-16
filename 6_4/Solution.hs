data Candy = Cake String Double | Candy String Double Double
  deriving Eq
cost(Cake x y) = y
cost(Candy x y z) = y * z
totalPrice [] = 0
totalPrice (x:xs) = cost (x) + totalPrice(xs)
test = totalPrice [Cake "Sancho" 750, Candy "Belochka" 1000 0.25]
