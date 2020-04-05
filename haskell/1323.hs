
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1323

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
            then return ()
            else do putStrLn $ show (div (n*(n+1)*((2*n)+1)) 6)
                    main