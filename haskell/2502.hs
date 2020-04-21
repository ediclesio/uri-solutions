
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2502

import Data.Char
import System.IO (isEOF)

index :: String -> Char -> Int
index [] _ = 0
index (a:as) c | a == c = 0
               | otherwise = 1 + index as c

getChar' :: Char -> String -> String -> Char
getChar' c a b | elem c a = b !! (index a c)
               | elem c b = a !! (index b c)
               | otherwise = c

decifra :: String -> String -> String -> String
decifra [] _ _ = []
decifra (c:cs) a b | isUpper c = (toUpper (getChar' (toLower c) a b)):decifra cs a b
                   | otherwise = (getChar' c a b):decifra cs a b

repete :: Int -> String -> String -> IO ()
repete 0 _ _ = return ()
repete n a b = do str <- getLine
                  putStrLn $ decifra str a b
                  repete (n-1) a b

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if length input > 2
                    then do let numbers = map read (words input) :: [Int]
                                c = numbers !! 0
                                n = numbers !! 1
                            str1 <- getLine
                            str2 <- getLine
                            repete n (map toLower str1) (map toLower str2)
                            putStrLn ""
                            main
                    else return ()