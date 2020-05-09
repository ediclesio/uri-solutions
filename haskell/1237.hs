
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1237

import System.IO (isEOF)

sub :: String -> String -> String
sub [] _ = []
sub _ [] = []
sub (a:as) (b:bs) | a == b = a:sub as bs
                  | otherwise = []

getSub :: String -> String -> String -> String
getSub [] _ str = str
getSub (a:as) b str | a == head b = do let s = sub (a:as) b
                                       if length str < length s
                                        then getSub as b s
                                        else getSub as b str
                    | otherwise = getSub as b str

maxSub :: String -> String -> Int -> Int
maxSub _ [] s = s
maxSub a b s = do let str = getSub a b []
                      len = length str
                  if len > s
                   then if len < length b
                         then maxSub a (drop len b) len
                         else len
                   else maxSub a (tail b) s

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str1 <- getLine
                   if str1 /= ""
                    then do str2 <- getLine
                            putStrLn $ show (maxSub str1 str2 0)
                            main
                    else return ()