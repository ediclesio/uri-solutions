
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1164

repete :: Int -> IO ()
repete 0 = return ()
repete n = do x <- readLn :: IO Int
              let numbers = [y | y <- [1..div x 2], mod x y == 0]
              if x == sum numbers
               then putStrLn $ show x ++ " eh perfeito"
               else putStrLn $ show x ++ " nao eh perfeito"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n