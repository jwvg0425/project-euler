
fibos = [1, 1] ++ zipWith (+) fibos (tail fibos)

calc = sum . filter (\x -> x `mod` 2 == 0) . takeWhile (<=4000000)

solve = calc fibos