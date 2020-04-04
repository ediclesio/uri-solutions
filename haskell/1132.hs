
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1132

maiorNum :: Int -> Int -> Int
maiorNum x y | x >= y = x
             | otherwise = y

menorNum :: Int -> Int -> Int
menorNum x y | x <= y = x
             | otherwise = y

naoDivisiveisPor13 :: Int -> Int -> [Int]
naoDivisiveisPor13 a b = [x | x <- [a..b], mod x 13 /= 0]

main :: IO ()
main = do x <- readLn :: IO Int
          y <- readLn :: IO Int
          let maior = maiorNum x y
              menor = menorNum x y
              soma = sum (naoDivisiveisPor13 menor maior)
          putStrLn $ show soma