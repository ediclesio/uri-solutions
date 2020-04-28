
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1171

remDuplicados :: [Int] -> [Int]
remDuplicados [] = []
remDuplicados (x:xs) | elem x xs = remDuplicados xs
                     | otherwise = x:remDuplicados xs

repete :: Int -> IO [Int]
repete 0 = return []
repete n = do x <- readLn :: IO Int
              a <- repete (n-1)
              return (x:a)

cont :: [Int] -> [Int] -> [(Int,Int)]
cont _ [] = []
cont a (b:bs) = (b,length [y | y <- a, y == b]):cont a bs

qsort :: [Int] -> [Int]
qsort []     = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
    where
        lesser  = filter (< x) xs
        greater = filter (>= x) xs

mostra :: [(Int,Int)] -> IO ()
mostra [] = return ()
mostra (x:xs) = do putStrLn $ show (fst x) ++ " aparece " ++ show (snd x) ++ " vez(es)"
                   mostra xs

main :: IO ()
main = do n <- readLn :: IO Int
          a <- repete n
          let b = qsort $ remDuplicados a
          mostra (cont a b)