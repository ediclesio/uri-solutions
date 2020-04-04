
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1091

repete :: Int -> Int -> Int -> IO ()
repete 0 _ _ = return ()
repete k n m = do str <- getLine
                  let numbers = map read (words str) :: [Int]
                      x = numbers !! 0
                      y = numbers !! 1
                  if x == n || y == m
                   then putStrLn $ "divisa"
                   else if x > n && y > m
                         then putStrLn $ "NE"
                         else if x > n && y < m
                               then putStrLn $ "SE"
                               else if x < n && y > m
                                     then putStrLn $ "NO"
                                     else if x < n && y < m
                                           then putStrLn $ "SO"
                                           else putStrLn $ ""
                  repete (k-1) n m

main :: IO ()
main = do k <- readLn :: IO Int
          if k /= 0
            then do str <- getLine
                    let numbers = map read (words str) :: [Int]
                        n = numbers !! 0
                        m = numbers !! 1
                    repete k n m
                    main
            else return ()