
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1131

repete :: Int -> Int -> Int -> Int -> IO [Int]
repete e l k j = do input <- getLine
                    let numbers = map read (words input) :: [Int]
                        a = numbers !! 0
                        b = numbers !! 1
                    putStrLn "Novo grenal (1-sim 2-nao)"
                    n <- readLn :: IO Int
                    if n == 2
                     then if a > b
                           then return ((e+1):(l+1):k:j:[])
                           else if a < b
                                 then return ((e+1):l:(k+1):j:[])
                                 else return ((e+1):l:k:(j+1):[])
                     else if a > b
                           then repete (e+1) (l+1) k j
                           else if a < b
                                 then repete (e+1) l (k+1) j
                                 else repete (e+1) l k (j+1)

main :: IO ()
main = do numbers <- repete 0 0 0 0
          let e = numbers !! 0
              l = numbers !! 1
              k = numbers !! 2
              j = numbers !! 3
          putStrLn $ show e ++ " grenais"
          putStrLn $ "Inter:" ++ show l
          putStrLn $ "Gremio:" ++ show k
          putStrLn $ "Empates:" ++ show j
          if l > k
           then putStrLn "Inter venceu mais"
           else if l < k
                 then putStrLn "Gremio venceu mais"
                 else if k == l
                       then putStrLn "Nao houve vencedor"
                       else return ()