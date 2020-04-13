
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3059

zip' :: Int -> [Int] -> [(Int,Int)]
zip' _ [] = []
zip' x (y:ys) = [(x,y)]++zip' x ys

pares :: [Int] -> [(Int,Int)]
pares [a] = []
pares (a:as) = (zip' a as)++pares as

somaPares :: [(Int,Int)] -> Int -> Int -> Int
somaPares [] _ _ = 0
somaPares (a:as) i f | fst a + snd a >= i &&
                       fst a + snd a <= f = 1 + somaPares as i f
                     | otherwise = somaPares as i f

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              i = numbers !! 1
              f = numbers !! 2
          input <- getLine
          let array = map read (words input) :: [Int]
          putStrLn $ show (somaPares (pares array) i f)