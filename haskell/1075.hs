
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1075

sequencia :: [Int] -> String
sequencia [] = ""
sequencia [l] = show l
sequencia (l:ls) = (show l)++"\n"++(sequencia ls)

resto2 :: Int -> [Int]
resto2 n = [x | x <- [1..10000], mod x n == 2]

main :: IO ()
main = do n <- readLn :: IO Int
          let lista = resto2 n
          putStrLn $ sequencia lista