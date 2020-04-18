
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1173

resultado :: [Int] -> Int -> IO ()
resultado [] _ = return ()
resultado (x:xs) i = do putStrLn $ "N[" ++ show i ++ "] = " ++ show x
                        resultado xs (i+1)

repete :: Int -> Int -> IO [Int]
repete 0 _ = return []
repete n x = do a <- repete (n-1) (2*x)
                return (x:a)

main :: IO ()
main = do v <- readLn :: IO Int
          a <- repete 10 v
          resultado a 0