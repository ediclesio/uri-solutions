
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2168

forJ :: [[Int]] -> Int -> Int -> Int -> IO ()
forJ a i j n | j < n = do if (a !! i) !! j +
                             (a !! i) !! (j+1) +
                             (a !! (i+1)) !! j +
                             (a !! (i+1)) !! (j+1)
                             < 2
                           then putStr "U"
                           else putStr "S"
                          
                          forJ a i (j+1) n
             
             | otherwise = return ()

forI :: [[Int]] -> Int -> Int -> IO ()
forI a i n | i < n = do forJ a i 0 n
                        putStrLn ""
                        forI a (i+1) n
           | otherwise = return ()

loop :: Int -> [[Int]] -> IO [[Int]]
loop 0 a = return a
loop n a = do input <- getLine
              let numbers = map read (words input) :: [Int]
              loop (n-1) (a ++ [numbers])

main :: IO ()
main = do n <- readLn :: IO Int
          arr <- loop (n+1) []
          forI arr 0 n