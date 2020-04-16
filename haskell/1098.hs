
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1098

import Text.Printf (printf)

repete1 :: Double -> IO ()
repete1 x | x <= 1.9 = do repete2 x 1.0
                          repete1 (x+0.2)
          | otherwise = return ()

repete2 :: Double -> Double -> IO ()
repete2 x y | y <= 3.0 = do let z = x+y
                            if x == 0 || x == 1
                             then printf "I=%.0f J=%.0f\n" x z
                             else if z == 3 || z == 4 || z == 5
                                   then printf "I=%.0f J=%.0f\n" x z
                                   else printf "I=%.1f J=%.1f\n" x z
                            repete2 x (y+1)
            | otherwise = return ()

repete3 :: Int -> IO ()
repete3 x | x <= 5 = do putStrLn $ "I=2 J=" ++ show x
                        repete3 (x+1)
          | otherwise = return ()

main :: IO ()
main = do repete1 0.0
          repete3 3