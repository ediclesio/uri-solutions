
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1133

maiorNum :: Int -> Int -> Int
maiorNum x y | x >= y = x
             | otherwise = y

menorNum :: Int -> Int -> Int
menorNum x y | x <= y = x
             | otherwise = y

mostraLista :: [Int] -> IO ()
mostraLista [] = return ()
mostraLista (l:ls) = do putStrLn $ show l
                        mostraLista ls

main :: IO ()
main = do x <- readLn :: IO Int
          y <- readLn :: IO Int
          let maior = maiorNum x y
              menor = menorNum x y
              lista = [x | x <- [(menor+1)..(maior-1)], mod x 5 == 2 || mod x 5 == 3]
          mostraLista lista