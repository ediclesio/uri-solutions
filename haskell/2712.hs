
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2712

import Data.Char

resultado :: Int -> IO ()
resultado x | x == 1 || x == 2 = putStrLn "MONDAY"
            | x == 3 || x == 4 = putStrLn "TUESDAY"
            | x == 5 || x == 6 = putStrLn "WEDNESDAY"
            | x == 7 || x == 8 = putStrLn "THURSDAY"
            | x == 9 || x == 0 = putStrLn "FRIDAY"
            | otherwise = return ()

isValid :: String -> Bool
isValid [] = False
isValid str = if length str == 8
               then do let ls = take 3 str
                           c = str !! 3
                           nums = reverse $ take 4 (reverse str)
                       if all isLetter ls && 
                          all isUpper ls &&
                          all isDigit nums && 
                          c == '-'
                        then True
                        else False
               else False

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              if isValid str
               then resultado (read [head $ reverse str] :: Int)
               else putStrLn "FAILURE"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n