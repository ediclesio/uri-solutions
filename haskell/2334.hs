
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2334

main :: IO ()
main = do p <- readLn
          if p == -1
            then return ()
            else do if p == 0
                     then putStrLn $ "0"
                     else putStrLn $ show (p-1)
                    main