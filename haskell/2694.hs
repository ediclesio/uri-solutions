
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2694

getNums :: String -> String -> [Int]
getNums [] num = if length num > 0 then [read num :: Int] else []
getNums (a:as) num | elem a ['0'..'9'] = getNums as (num++[a])
                   | otherwise = if length num > 0 
                                  then (read num :: Int):getNums as []
                                  else getNums as []

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = getNums input []
              putStrLn $ show (sum numbers)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n