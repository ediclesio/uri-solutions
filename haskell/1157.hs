
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1157

mostraDivisores :: [Int] -> IO ()
mostraDivisores [] = return ()
mostraDivisores (x:xs) = do putStrLn $ show x
                            mostraDivisores xs

main :: IO ()
main = do n <- readLn :: IO Int
          let lista = [x | x <- [1..n], mod n x == 0]
          mostraDivisores lista