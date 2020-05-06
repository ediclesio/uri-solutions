
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2598

import Text.Printf (printf)

ceiling' :: Float -> Float
ceiling' x = fromIntegral (ceiling x)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              if input == ""
                    then return ()
                    else do let numbers = map read (words input) :: [Float]
                                a = numbers !! 0
                                b = numbers !! 1
                            printf "%.f\n" (ceiling' (a/b))
                            repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n