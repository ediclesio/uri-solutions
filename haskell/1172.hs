
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1172

resultado :: [Int] -> Int -> IO ()
resultado [] _ = return ()
resultado (x:xs) i = do putStrLn $ "X[" ++ show i ++ "] = " ++ show x
                        resultado xs (i+1)

repete :: Int -> IO [Int]
repete 0 = return []
repete n = do x <- readLn :: IO Int
              a <- repete (n-1)
              if x <= 0
               then return (1:a)
               else return (x:a)

main :: IO ()
main = do a <- repete 10
          resultado a 0