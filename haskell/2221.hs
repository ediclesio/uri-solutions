
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2221

toDouble :: Int -> Double
toDouble x = fromIntegral x

repete :: Int -> IO ()
repete 0 = return ()
repete t = do b <- readLn :: IO Int
              input <- getLine
              let numbers = map read (words input) :: [Int]
                  a1 = numbers !! 0
                  d1 = numbers !! 1
                  l1 = numbers !! 2
                  num = (toDouble a1 + toDouble d1)/2
                  gp1 = if mod l1 2 == 0
                         then num + toDouble b
                         else num
              input <- getLine
              let numbers = map read (words input) :: [Int]
                  a2 = numbers !! 0
                  d2 = numbers !! 1
                  l2 = numbers !! 2
                  num = (toDouble a2 + toDouble d2)/2
                  gp2 = if mod l2 2 == 0
                         then num + toDouble b
                         else num
              if gp1 == gp2
               then putStrLn "Empate"
               else if gp1 > gp2
                     then putStrLn "Dabriel"
                     else putStrLn "Guarte"
              repete (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t