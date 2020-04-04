
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1066

mostraResultado :: Int -> Int -> Int -> Int -> IO ()
mostraResultado par impar pos neg = putStrLn $ show par ++ " valor(es) par(es)\n" ++ 
                                               show impar ++ " valor(es) impar(es)\n" ++
                                               show pos ++ " valor(es) positivo(s)\n" ++
                                               show neg ++ " valor(es) negativo(s)"

qtdPIPN :: [Int] -> Int -> Int -> Int -> Int -> IO () -- Pares,Ímpares,Positivos,Negativos
qtdPIPN [] p i pos neg = mostraResultado p i pos neg
qtdPIPN (n:ns) p i pos neg = if n >= 0
                              then if n == 0
                                    then qtdPIPN ns (p+1) i pos neg
                              else if mod n 2 == 0
                                    then qtdPIPN ns (p+1) i (pos+1) neg
                                    else qtdPIPN ns p (i+1) (pos+1) neg
                             else if mod n 2 == 0
                                   then qtdPIPN ns (p+1) i pos (neg+1)
                                   else qtdPIPN ns p (i+1) pos (neg+1)

main :: IO ()
main = do v1 <- readLn :: IO Int
          v2 <- readLn :: IO Int
          v3 <- readLn :: IO Int
          v4 <- readLn :: IO Int
          v5 <- readLn :: IO Int
          let numbers = v1:v2:v3:v4:v5:[]
          qtdPIPN numbers 0 0 0 0