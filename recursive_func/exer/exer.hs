{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
-- exer 1
-- 1. and
and' :: [Bool] -> Bool
and' [] = True
and' (x : xs) = x && and' xs

-- 2. concat
concat' :: [[a]] -> [a]
concat' [] = []
concat' (xs : xss) = xs ++ concat' xss

-- 3. replicate
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n - 1) x

-- 4. (!!)
infixl 9 <!!>

(<!!>) :: [p] -> Int -> p
[] <!!> _ = error "empty list"
(x : _) <!!> 0 = x
(_ : xs) <!!> n = xs <!!> (n - 1)

-- 5. elem
elem' :: Eq t => t -> [t] -> Bool
elem' _ [] = False
elem' e (x : xs) = e == x || elem' e xs

-- exer 2
merge' :: Ord a => [a] -> [a] -> [a]
merge' xs [] = xs
merge' [] xs = xs
merge' (x : xs) (y : ys)
  | x > y = y : merge' (x : xs) ys
  | otherwise = x : merge' xs (y : ys)

-- exer 3
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge' (msort (take half_len xs)) (msort (drop half_len xs))
  where
    half_len = length xs `div` 2

-- Insertion Sort
insert :: Ord a => a -> [a] -> [a]
insert e [] = [e]
insert e (x : xs)
  | e > x = x : insert e xs
  | otherwise = e : (x : xs)

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x : xs) = insert x (isort xs)
