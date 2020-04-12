
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1030

flavious :: Int -> Int -> Int
flavious x y | x == 1 = 0
             | otherwise = mod ((flavious (x-1) y) + y) x

repete :: Int -> Int -> IO ()
repete 0 _ = return ()
repete n i = do input <- getLine
                let numbers = map read (words input) :: [Int]
                    x = numbers !! 0
                    y = numbers !! 1
                putStrLn $ "Case " ++ show i ++ ": " ++ show ((flavious x y) + 1)
                repete (n-1) (i+1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 1