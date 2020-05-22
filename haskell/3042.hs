
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3042

repete :: Int -> Int -> Int -> IO Int
repete 0 _ c = return c
repete m p c = do input <- getLine
                  if input == "0 1 1" && p /= 1
                   then repete (m-1) 1 (c+abs (p-1))
                   else if input == "1 0 1" && p /= 2
                         then repete (m-1) 2 (c+abs (p-2))
                         else if input == "1 1 0" && p /= 3
                               then repete (m-1) 3 (c+abs (p-3))
                               else repete (m-1) p c

main :: IO ()
main = do m <- readLn :: IO Int
          if m == 0
           then return ()
           else do r <- repete m 2 0
                   putStrLn $ show r
                   main