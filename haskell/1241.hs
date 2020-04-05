
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1241

iguais :: [Char] -> [Char] -> Bool
iguais [] [] = True
iguais (a:as) (b:bs) | a == b = iguais as bs
                     | otherwise = False

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let strings = words input
                  b = strings !! 1
                  a = if length (strings !! 0) >= length b
                       then reverse $ take (length b) (reverse $ strings !! 0)
                       else " "
              if iguais a b
               then putStrLn "encaixa"
               else putStrLn "nao encaixa"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n