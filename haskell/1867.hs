
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1867

toArrString :: String -> [String]
toArrString str = [[a] | a <- str]

calc :: String -> Int
calc nums = do let s = sum (map read (toArrString nums) :: [Int])
               if s > 9
                then calc (show s)
                else s

main :: IO ()
main = do input <- getLine
          if input == "0 0"
           then return ()
           else do let numbers = words input
                       a = calc (numbers !! 0)
                       b = calc (numbers !! 1)
                   if a == b
                    then putStrLn "0"
                    else if a > b
                          then putStrLn "1"
                          else putStrLn "2"
                   main