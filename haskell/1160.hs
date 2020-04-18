
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1160

while :: Int -> Int -> Double -> Double -> Int -> Int
while pa pb g1 g2 c | pa <= pb && c <= 100 = do let a = floor (((g1/100.0)+1.0)*fromIntegral pa)
                                                    b = floor (((g2/100.0)+1.0)*fromIntegral pb)
                                                while a b g1 g2 (c+1)
                    | otherwise = c

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = words input
                  pa = read (numbers !! 0) :: Int
                  pb = read (numbers !! 1) :: Int
                  g1 = read (numbers !! 2) :: Double
                  g2 = read (numbers !! 3) :: Double
                  r = while pa pb g1 g2 0
              if r <= 100
               then putStrLn $ show r ++ " anos."
               else putStrLn "Mais de 1 seculo."
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n