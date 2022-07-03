{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use map" #-}
-- exer 1
-- curried function

-- exer 2
c :: (a -> b) -> (a -> Bool) -> [a] -> [b]
c m f xs = map m (filter f xs)

-- exer 3
-- map
map1 :: (a -> b) -> [a] -> [b]
map1 _ [] = []
map1 f (x : xs) = f x : map1 f xs

map2 :: (a -> b) -> [a] -> [b]
map2 f = foldr (\x xs -> f x : xs) []

-- filter
filter1 :: (a -> Bool) -> [a] -> [a]
filter1 _ [] = []
filter1 p (x : xs)
  | p x = x : filter1 p xs
  | otherwise = filter1 p xs

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p = foldr (\x xs -> if p x then x : xs else xs) []
