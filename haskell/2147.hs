
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2147

import Text.Printf (printf)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              printf "%.2f\n" (fromIntegral (length str) * (0.01 :: Double))
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n