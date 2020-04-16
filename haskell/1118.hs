
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1118

import Text.Printf (printf)

repete :: Int -> Double -> IO ()
repete c m | c <= 1 = do x <- readLn :: IO Double
                         if x >= 0 && x <= 10
                          then repete (c+1) (m+x)
                          else do printf("nota invalida\n");
                                  repete c m
           | otherwise = printf "media = %.2f\n" (m/2)

repete2 :: IO Int
repete2 = do printf "novo calculo (1-sim 2-nao)\n"
             r <- readLn :: IO Int
             if r == 2
              then return 2
              else if r == 1
                    then return 1
                    else repete2

main :: IO ()
main = do repete 0 0
          r <- repete2
          if r == 2
           then return ()
           else main