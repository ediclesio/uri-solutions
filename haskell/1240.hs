
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1240

encaixa :: String -> String -> Bool
encaixa _ [] = True
encaixa (a:as) (b:bs) | a == b = encaixa as bs
                      | otherwise = False

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = words input
                  n1 = reverse (numbers !! 0)
                  n2 = reverse (numbers !! 1)
              if length n1 >= length n2 && encaixa n1 n2
               then putStrLn "encaixa"
               else putStrLn "nao encaixa"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n