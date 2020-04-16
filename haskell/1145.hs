
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1145

repete :: Int -> Int -> Int -> Int -> IO ()
repete x y i c | i <= y = do putStr $ show i
                             if c+1 == x
                              then do putStrLn ""
                                      repete x y (i+1) 0
                              else do putStr " "
                                      repete x y (i+1) (c+1)
               | otherwise = return ()

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              x = numbers !! 0
              y = numbers !! 1
          repete x y 1 0