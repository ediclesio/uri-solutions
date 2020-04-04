
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1070

mostraImpares :: Int -> Int -> IO ()
mostraImpares x i = if i < 6
                     then if mod x 2 == 1
                           then do putStrLn $ show x
                                   mostraImpares (x+1) (i+1)
                           else mostraImpares (x+1) i
                     else return ()

main :: IO ()
main = do n <- readLn :: IO Int
          mostraImpares n 0