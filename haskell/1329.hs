
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1329

showResult :: Int -> Int -> IO ()
showResult m j = putStrLn $ "Mary won "++show m++" times and John won "++show j++" times"

repete :: [Int] -> Int -> Int -> IO ()
repete [] m j = showResult m j
repete (k:ks) m j | k == 0 = repete ks (m+1) j
                  | otherwise = repete ks m (j+1)

main :: IO ()
main = do n <- readLn :: IO Int
          if n /= 0
            then do str <- getLine
                    let numbers = map read (words str) :: [Int]
                    repete numbers 0 0
                    main
            else return ()