
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1129

mostra :: Int -> IO ()
mostra x = case x of
            0 -> putStrLn "A"
            1 -> putStrLn "B"
            2 -> putStrLn "C"
            3 -> putStrLn "D"
            4 -> putStrLn "E"

proc :: [Int] -> Int -> [Int]
proc [] _ = []
proc (x:xs) i | x <= 127 = i:proc xs (i+1)
              | otherwise = proc xs (i+1)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  r = proc numbers 0
              if length r == 1
               then mostra (head r)
               else putStrLn "*"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do repete n
                   main