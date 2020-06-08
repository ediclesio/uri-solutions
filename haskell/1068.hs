
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1068

import System.IO (isEOF)

verify :: String -> Int -> Int -> Bool
verify [] x y = x == y
verify (a:as) x y | x < y = False
                  | a == '(' = verify as (x+1) y
                  | a == ')' = verify as x (y+1)
                  | otherwise = verify as x y

loop :: Int -> IO ()
loop i = do end <- isEOF
            if end
             then return ()
             else do str <- getLine
                     if str /= "" && length str <= 1000
                      then do if verify str 0 0
                               then putStrLn "correct"
                               else putStrLn "incorrect"
                              if i+1 == 10000
                               then return ()
                               else loop (i+1)
                     else return ()

main :: IO ()
main = loop 0