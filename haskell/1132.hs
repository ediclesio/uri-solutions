
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1132

naoMult13 :: Int -> Int -> [Int]
naoMult13 a b = [x | x <- [a..b], mod x 13 /= 0]

main :: IO ()
main = do x <- readLn :: IO Int
          y <- readLn :: IO Int
          let soma = sum (naoMult13 (min x y) (max x y))
          putStrLn $ show soma