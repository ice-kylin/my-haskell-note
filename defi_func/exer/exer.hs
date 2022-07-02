-- exer 1
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use guards" #-}
{-# HLINT ignore "Redundant if" #-}
safetail1 :: [a] -> [a]
safetail1 xs = if null xs then [] else tail xs

safetail2 :: [a] -> [a]
safetail2 xs
  | null xs = []
  | otherwise = tail xs

safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 xs = tail xs

safetail4 :: [a] -> [a]
safetail4 [] = []
safetail4 (_ : xs) = xs

-- exer 2
or1 :: Bool -> Bool -> Bool
or1 x y =
  if x
    then True
    else
      if y
        then True
        else False

or2 :: Bool -> Bool -> Bool
or2 x y
  | x = True
  | y = True
  | otherwise = False

or3 :: Bool -> Bool -> Bool
or3 True _ = True
or3 _ True = True
or3 _ _ = False

or4 :: Bool -> Bool -> Bool
or4 False False = False
or4 _ _ = True

-- actually defined in standard lib
or5 :: Bool -> Bool -> Bool
or5 False a = a
or5 True _ = True

-- exer 3
and1 :: Bool -> Bool -> Bool
and1 x y =
  if x
    then
      if y
        then True
        else False
    else False

-- exer 4
and2 :: Bool -> Bool -> Bool
and2 x y =
  if x
    then y
    else
      if not x
        then False
        else False
