
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1175

resultado :: [Int] -> Int -> IO ()
resultado [] _ = return ()
resultado (x:xs) i = do putStrLn $ "N[" ++ show i ++ "] = " ++ show x
                        resultado xs (i+1)

repete :: Int -> IO [Int]
repete 0 = return []
repete n = do x <- readLn :: IO Int
              a <- repete (n-1)
              return (x:a)

main :: IO ()
main = do a <- repete 20
          resultado (reverse a) 0