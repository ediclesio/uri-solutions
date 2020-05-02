
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1437

arr = ['N','L','S','O']

direcao :: String -> Int -> Char
direcao [] i = arr !! i
direcao (a:as) i | a == 'E' = if i-1 >= 0
                               then direcao as (i-1)
                               else direcao as ((length arr)-1)
                 
                 | otherwise = if i+1 <= (length arr)-1
                                then direcao as (i+1)
                                else direcao as 0
main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do str <- getLine
                   putStrLn [direcao str 0]
                   main