-- exer 1
f1 :: [Char]
f1 = ['a', 'b', 'c']

f2 :: (Char, Char, Char)
f2 = ('a', 'b', 'c')

f3 :: [(Bool, Char)]
f3 = [(False, '0'), (True, '1')]

f4 :: ([Bool], [Char])
f4 = ([False, True], ['0', '1'])

f5 :: [[a] -> [a]]
f5 = [tail, init, reverse]

-- exer 2
second :: [a] -> a
second xs = head (tail xs)

swap :: (b, a) -> (a, b)
swap (x, y) = (y, x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double x = x * 2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (t -> t) -> t -> t
twice f x = f (f x)
