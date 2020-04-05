
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1174

import Text.Printf (printf)

lerDadosVetor :: Int -> IO [Float]
lerDadosVetor 100 = return []
lerDadosVetor n = do x <- readLn :: IO Float
                     lista <- lerDadosVetor (n+1)
                     return (x:lista)

mostraLista :: [Float] -> Int -> IO ()
mostraLista [] _ = return ()
mostraLista (l:ls) i | l <= 10 = do printf "A[%d] = %.1f\n" i l
                                    mostraLista ls (i+1)
                     | otherwise = mostraLista ls (i+1)

main :: IO ()
main = do lista <- lerDadosVetor 0
          mostraLista lista 0