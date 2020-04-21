
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2464

index :: Char -> [Char] -> Int
index _ [] = 0
index c (a:as) | c == a = 0
               | otherwise = 1 + index c as

decifra :: String -> String -> String
decifra _ [] = []
decifra a (b:bs) = (a !! (index b ['a'..'z'])):decifra a bs

main :: IO ()
main = do str1 <- getLine
          str2 <- getLine
          putStrLn $ decifra str1 str2