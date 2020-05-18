
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2691

getNumbers :: String -> String -> [String]
getNumbers [] n = [n]
getNumbers (a:as) n | elem a ['0'..'9'] = getNumbers as (n++[a])
                    | otherwise = n:getNumbers as []

mostra :: Int -> Int -> Int -> IO ()
mostra n1 n2 i | i <= 10 && n1 == n2 = do putStrLn $ show n1 ++ " x " ++
                                                     show i ++ " = " ++
                                                     show (n2*i)
                                          mostra n1 n2 (i+1)
               
               | i <= 10 && n1 /= n2 = do putStrLn $ show n1 ++ " x " ++
                                                     show i ++ " = " ++
                                                     show (n1*i) ++ " && " ++
                                                     show n2 ++ " x " ++
                                                     show i ++ " = " ++
                                                     show (n2*i)
                                          mostra n1 n2 (i+1)
               | otherwise = return ()

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = getNumbers input []
                  n1 = read (numbers !! 0) :: Int
                  n2 = read (numbers !! 1) :: Int
              mostra n1 n2 5
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n