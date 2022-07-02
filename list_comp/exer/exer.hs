-- exer 1
pyths :: (Num c, Ord c, Enum c) => c -> [(c, c, c)]
pyths x = [(a, b, c) | a <- [1 .. x], b <- [1 .. x], c <- [1 .. x], a + b > c, a ^ 2 + b ^ 2 == c ^ 2]

-- exer 2
perfects :: Integral a => a -> [a]
perfects x = [a | a <- [1 .. x], sum ((\x -> [a | a <- [1 .. x - 1], x `mod` a == 0]) a) == a]

-- exer 3
scalarProduct :: Num a => [a] -> [a] -> a
scalarProduct xs ys = sum [uncurry (*) xy | xy <- zip xs ys]
