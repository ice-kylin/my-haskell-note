-- exer 1
mult' :: (Eq t, Num t, Num p) => p -> t -> p
mult' _ 0 = 0
mult' x y = x + mult' (x - 1) y

data Nat
  = Zero
  | Succ Nat
  deriving (Show)

add :: Nat -> Nat -> Nat
add x Zero = x
add x (Succ y) = Succ (add x y)

mult :: Nat -> Nat -> Nat
mult Zero _ = Zero
mult _ Zero = Zero
mult (Succ n) m = add m (mult n m)

-- exer 2
data Expr
  = Val Int
  | Add Expr Expr
  | Mul Expr Expr
  deriving (Show)

folde :: (Int -> t) -> (t -> t -> t) -> (t -> t -> t) -> Expr -> t
folde f _ _ (Val n) = f n
folde f g h (Add x y) = folde f g h x `g` folde f g h y
folde f g h (Mul x y) = folde f g h x `h` folde f g h y

eval :: Expr -> Int
eval = folde id (+) (*)

-- exer 3
data Tree a
  = Leaf a
  | Node (Tree a) (Tree a)
  deriving (Show)
