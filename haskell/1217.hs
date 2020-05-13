
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1217

import Text.Printf (printf)

repete :: Int -> Double -> Double -> Double -> IO ()
repete 0 sk sp t = do printf "%.2f kg by day\n" (sk/t)
                      printf "R$ %.2f by day\n" (sp/t)

repete n sk sp t = do v <- readLn :: IO Double
                      input <- getLine
                      let fs = words input
                      putStrLn $ "day " ++ show (floor (t+1)) ++ ": " ++ show (length fs) ++ " kg"
                      repete (n-1) (sk+fromIntegral (length fs)) (sp+v) (t+1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0 0 0