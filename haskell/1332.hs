
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1332

isOne :: String -> String -> Int
isOne [] _ = 0
isOne (a:as) (b:bs) | a == b = 1 + isOne as bs
                    | otherwise = isOne as bs

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              if length str == 5
               then putStrLn "3"
               else if isOne str "one" >= 2
                     then putStrLn "1"
                     else putStrLn "2"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n