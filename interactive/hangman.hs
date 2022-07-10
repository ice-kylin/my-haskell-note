-- adopting a top down approach to implementing hangman in Haskell
hangman :: IO ()
hangman = do
  putStrLn "Hangman"
  putStrLn "----- >8 -----"
  putStrLn "Think of a word:"
  xs <- getLine
  putStrLn "Try to guess it:"
  putStrLn "----- >8 -----"
  putStrLn "Thanks for playing, good bye!"
