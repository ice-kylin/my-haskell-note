data Op
  = Add
  | Sub
  | Mul
  | Div

instance Show Op where
  show Add = " + "
  show Sub = " - "
  show Mul = " * "
  show Div = " / "

data Expr
  = Val Int
  | App Op Expr Expr

instance Show Expr where
  show (Val n) = show n
  show (App o l r) = brak l ++ show o ++ brak r
    where
      brak (Val n) = show n
      brak e = "(" ++ show e ++ ")"

type Rst = (Expr, Int)

ops :: [Op]
ops = [Add, Sub, Mul, Div]

subs :: [a] -> [[a]]
subs [] = [[]]
subs (x : xs) = yss ++ map (x :) yss
  where
    yss = subs xs

bases :: [a] -> [[a]]
bases [] = [[]]
bases xs =
  [ [xs !! i] ++ take i xs ++ drop (i + 1) xs
    | i <- [0 .. (length xs - 1)]
  ]

perm :: [a] -> [[a]]
perm [] = [[]]
perm xs =
  [ y : zs
    | (y : ys) <- bases xs,
      zs <- perm ys
  ]

choices :: [a] -> [[a]]
choices xs = [zs | ys <- subs xs, zs <- perm ys]

split :: [a] -> [([a], [a])]
split [] = []
split [_] = []
split (x : xs) =
  ([x], xs) :
    [ (x : ls, rs)
      | (ls, rs) <- split xs
    ]

app :: Op -> Rst -> Rst -> [Rst]
app Add (e1, r1) (e2, r2) =
  [ (App Add e1 e2, r1 + r2)
    | r1 <= r2
  ]
app Sub (e1, r1) (e2, r2) =
  [ (App Sub e1 e2, r1 - r2)
    | r1 > r2
  ]
app Mul (e1, r1) (e2, r2) =
  [ (App Mul e1 e2, r1 * r2)
    | r1 /= 1 && r2 /= 1 && r1 <= r2
  ]
app Div (e1, r1) (e2, r2) =
  [ (App Div e1 e2, r1 `div` r2)
    | r2 /= 1 && r1 `mod` r2 == 0
  ]

combine :: Rst -> Rst -> [Rst]
combine r1 r2 = [r | o <- ops, r <- app o r1 r2]

rsts :: [Int] -> [Rst]
rsts [] = []
rsts [n] = [(Val n, n) | n > 0]
rsts ns =
  [ r
    | (ls, rs) <- split ns,
      lr <- rsts ls,
      rr <- rsts rs,
      r <- combine lr rr
  ]

solutions :: [Int] -> Int -> [Expr]
solutions ns n =
  [ e
    | cs <- choices ns,
      (e, r) <- rsts cs,
      r == n
  ]
