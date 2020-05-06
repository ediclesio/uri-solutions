
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2667

calc :: String -> Int -> Int
calc [] r = r
calc (x:xs) r = calc xs (mod ((r*10)+(read [x] :: Int)) 3)

main :: IO ()
main = do input <- getLine
          putStrLn $ show (calc input 0)