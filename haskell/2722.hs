
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2722

mostra :: String -> String -> IO ()
mostra [] b = putStrLn b
mostra a [] = putStrLn a
mostra (a:as) (b:bs) | length as > 0 && length bs > 0 = do putStr $ (a:head as:[])++(b:head bs:[])
                                                           mostra (tail as) (tail bs)
                     | length as > 0 = do putStr $ (a:head as:[]) ++ [b]
                                          mostra (tail as) []
                     | length bs > 0 = do putStr $ [a] ++ (b:head bs:[])
                                          mostra [] (tail bs)
                     | otherwise = putStrLn ""

repete :: Int -> IO ()
repete 0 = return ()
repete n = do s1 <- getLine
              s2 <- getLine
              mostra s1 s2
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n