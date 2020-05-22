
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3037

vencedor :: Int -> Int -> IO ()
vencedor j m | j > m = putStrLn "JOAO"
             | m > j = putStrLn "MARIA"
             | otherwise = putStrLn ""

inputs :: Int -> [Int] -> IO Int
inputs 0 arr = return (sum arr)
inputs n arr = do input <- getLine
                  let numbers = map read (words input) :: [Int]
                      x = numbers !! 0
                      d = numbers !! 1
                  inputs (n-1) ((x*d):arr)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do n1 <- inputs 3 [] 
              n2 <- inputs 3 []
              vencedor n1 n2
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n