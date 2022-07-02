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
concat' (x : xs) = x ++ concat' xs

-- 3. replicate
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n - 1) x

-- 4. (!!)
infixl 9 <!!>

(<!!>) :: [p] -> Int -> p
(<!!>) [] _ = error "empty list"
(<!!>) (x : _) 0 = x
(<!!>) (_ : xs) n = (<!!>) xs (n - 1)

-- 5. elem
elem' :: Eq t => t -> [t] -> Bool
elem' _ [] = False
elem' e (x : xs) = e == x || elem' e xs

-- exer 2

-- exer 3
