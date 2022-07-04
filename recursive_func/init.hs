init' :: [a] -> [a]
init' [] = error "empty list"
init' [_] = []
init' (x : xs) = x : init' xs
