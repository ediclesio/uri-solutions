
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2702

naoAtende :: Int -> Int -> Int
naoAtende n1 n2 = if n1 > n2 then n1 - n2 else 0

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              ca = numbers !! 0
              ba = numbers !! 1
              pa = numbers !! 2
          input <- getLine
          let numbers = map read (words input) :: [Int]
              cr = numbers !! 0
              br = numbers !! 1
              pr = numbers !! 2
          
          let s = naoAtende cr ca + naoAtende br ba + naoAtende pr pa

          putStrLn $ show s