
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2242

isVogal c = if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'
             then True
             else False

isEngracado :: String -> String -> Bool
isEngracado [] [] = True
isEngracado (a:as) (b:bs) | a == b = isEngracado as bs
                          | otherwise = False

main :: IO ()
main = do input <- getLine
          let str = [a | a <- input, isVogal a]
          if isEngracado str (reverse str)
           then putStrLn "S"
           else putStrLn "N"