
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1134

input :: IO Int
input = do n <- readLn :: IO Int
           if n > 0 && n <= 4 then return n else input

repete :: Int -> Int -> Int -> IO [Int]
repete a g d = do n <- input
                  let x = if n == 1 then a+1 else a
                      y = if n == 2 then g+1 else g
                      z = if n == 3 then d+1 else d
                  if n == 4
                   then return (x:y:z:[])
                   else repete x y z

main :: IO ()
main = do numbers <- repete 0 0 0
          let a = numbers !! 0
              g = numbers !! 1
              d = numbers !! 2
          putStrLn "MUITO OBRIGADO"
          putStrLn $ "Alcool: " ++ show a
          putStrLn $ "Gasolina: " ++ show g
          putStrLn $ "Diesel: " ++ show d