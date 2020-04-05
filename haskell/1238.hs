
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1238

combinador :: String -> String -> String
combinador [] [] = []
combinador (a:as) [] = a:(combinador as [])
combinador [] (b:bs) = b:(combinador [] bs)
combinador (a:as) (b:bs) = a:b:(combinador as bs)

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let strs = words input
                  a = (strs !! 0)
                  b = (strs !! 1)
              putStrLn (combinador a b)
              repete (n-1)

main :: IO ()
main = do num <- readLn :: IO Int
          repete num