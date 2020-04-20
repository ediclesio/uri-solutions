
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3065

calc :: [(Char,Int)] -> Int
calc [] = 0
calc (a:as) | fst a == '+' = snd a + calc as
            | fst a == '-' = -(snd a) + calc as

getComponents :: String -> Char -> String -> [(Char, Int)]
getComponents [] c num = [(c, (read num :: Int))]
getComponents (a:as) c num | a == '+' || a == '-' = if length num > 0
                                                     then (c, (read num :: Int)):getComponents as a []
                                                     else getComponents as a []
                           | otherwise = getComponents as c (num++[a])

repete :: Int -> IO ()
repete i = do m <- readLn :: IO Int
              if m == 0
               then return ()
               else do input <- getLine
                       let a = if input !! 0 == '-'
                                then getComponents input '-' []
                                else getComponents input '+' []
                       putStrLn $ "Teste " ++ show i
                       putStrLn $ show (calc a)
                       putStrLn ""
                       repete (i+1)

main :: IO ()
main = repete 1