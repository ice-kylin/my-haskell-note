import System.IO ()

-- the board comprises five rows of stars
-- two players take it turn about to remove one or more stars from the end of a single row
-- the winner is the player who removes the last star or stars from the board
nim :: IO ()
nim = do
  putStrLn "nim"
  play [5, 4, 3, 2, 1] 1
  showDiv
  putStrLn "Thanks for playing, bye!"

play :: [Int] -> Int -> IO ()
play xs p = do
  showDiv
  showBoard xs
  showDiv
  putStr "player "
  putStr (show p)
  putStrLn ", select the line num of the line to remove:"
  n <- getInt
  putStr "player "
  putStr (show p)
  putStrLn ", select the num of stars to remove:"
  x <- getInt
  let ys = getNewBoard xs n x
  if null ys
    then showWinner p
    else
      play
        ys
        ( if p == 1
            then 2
            else 1
        )

showBoard :: [Int] -> IO ()
showBoard [] = do return ()
showBoard (x : xs) = do
  showRow x
  putChar '\n'
  showBoard xs

showDiv :: IO ()
showDiv = do putStrLn "----- >8 -----"

showRow :: Int -> IO ()
showRow 0 = do
  return ()
showRow x = do
  putStr "* "
  showRow (x - 1)

showWinner :: Int -> IO ()
showWinner x =
  do
    putStr "player "
    putStr (show x)
    putStrLn " win!"

getInt :: IO Int
getInt = do parseInt <$> getLine

parseInt :: [Char] -> Int
parseInt [] = 0
parseInt ('1' : xs) = (10 ^ length xs) + parseInt xs
parseInt ('2' : xs) = 2 * (10 ^ length xs) + parseInt xs
parseInt ('3' : xs) = 3 * (10 ^ length xs) + parseInt xs
parseInt ('4' : xs) = 4 * (10 ^ length xs) + parseInt xs
parseInt ('5' : xs) = 5 * (10 ^ length xs) + parseInt xs
parseInt ('6' : xs) = 6 * (10 ^ length xs) + parseInt xs
parseInt ('7' : xs) = 7 * (10 ^ length xs) + parseInt xs
parseInt ('8' : xs) = 8 * (10 ^ length xs) + parseInt xs
parseInt ('9' : xs) = 9 * (10 ^ length xs) + parseInt xs
parseInt ('0' : xs) = 0 + parseInt xs
parseInt _ = error "Invalid number"

getNewBoard :: [Int] -> Int -> Int -> [Int]
getNewBoard xs n x =
  if y /= 0
    then take (n - 1) xs ++ [y] ++ drop n xs
    else take (n - 1) xs ++ drop n xs
  where
    y = xs !! (n - 1) - x
