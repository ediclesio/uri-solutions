
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3117

cont :: [Int] -> Int -> Int -> Int
cont [] _ s = s
cont (x:xs) k s | x <= 0 = if s+1 == k then k else cont xs k (s+1)
                | otherwise = cont xs k s

vaiTerAula :: [Int] -> Int -> Bool
vaiTerAula numbers k = k <= cont numbers k 0

main :: IO ()
main = do input <- getLine
          let k = (map read (words input) :: [Int]) !! 1
          input <- getLine
          let numbers = map read (words input) :: [Int]
          if vaiTerAula numbers k
           then putStrLn "YES"
           else putStrLn "NO"