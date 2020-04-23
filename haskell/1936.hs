
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1936

fat :: [Int]
fat = [0,1,2,6,24,120,720,5040,40320,362880]

calc :: Int -> Int -> Int -> Int
calc _ x 0 = x
calc n x i = calc (mod n (fat !! i)) (x + div n (fat !! i)) (i-1)

main :: IO ()
main = do n <- readLn :: IO Int
          putStrLn $ show (calc n 0 9)