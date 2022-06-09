{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use !!" #-}
{-# HLINT ignore "Use last" #-}
{-# HLINT ignore "Use init" #-}
last1 :: [a] -> a
last1 xs = head (drop (length xs - 1) xs)

last2 :: [a] -> a
last2 xs = xs !! (length xs - 1)

last3 :: [a] -> a
last3 xs = head (reverse xs)

init1 :: [a] -> [a]
init1 xs = take (length xs - 1) xs

init2 :: [a] -> [a]
init2 xs = reverse (drop 1 (reverse xs))

init3 :: [a] -> [a]
init3 xs = reverse (tail (reverse xs))
