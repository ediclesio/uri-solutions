
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2557

import System.IO (isEOF)

splitAt' :: [Char] -> String -> String -> [String]
splitAt' _ [] n = [n]
splitAt' s (a:as) n | elem a s = n:splitAt' s as []
                    | otherwise = splitAt' s as (n++[a])

toInt :: String -> Int
toInt x = read x :: Int

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let arr = splitAt' ['+','='] input []
                                r = arr !! 0
                                l = arr !! 1
                                j = arr !! 2
                            if r == "R"
                             then putStrLn $ show (toInt j - toInt l)
                             else if l == "L"
                                   then putStrLn $ show (toInt j - toInt r)
                                   else putStrLn $ show (toInt l + toInt r)
                            main
                    else return ()