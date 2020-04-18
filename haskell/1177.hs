
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1177

resultado :: [Int] -> Int -> IO ()
resultado [] _ = return ()
resultado (x:xs) i = do putStrLn $ "N[" ++ show i ++
                                   "] = " ++ show x
                        resultado xs (i+1)

nums :: Int -> [Int]
nums t = [x | x <- [0..t-1]]

repete :: [Int] -> [Int]
repete [] = []
repete a | length a < 1000 = (a++a)++repete (a++a)
         | otherwise = a

main :: IO ()
main = do t <- readLn :: IO Int
          let a = take 1000 (repete (nums t))
          resultado a 0