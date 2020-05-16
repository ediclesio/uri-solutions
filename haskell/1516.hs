
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1516

str' :: String -> Int -> String
str' [] _ = []
str' (a:as) b = (take b (repeat a))++str' as b

print' :: [String] -> IO ()
print' [] = return ()
print' (a:as) = do putStrLn a
                   print' as

mostra :: [String] -> Int -> Int -> IO ()
mostra [] _ _ = return ()
mostra (a:as) c l = do print' $ take l (repeat $ str' a c)
                       mostra as c l

repete :: Int -> [String] -> IO [String]
repete 0 arr = return arr
repete n arr = do input <- getLine
                  repete (n-1) (arr++[input])

main :: IO ()
main = do input <- getLine
          if input == "0 0"
           then return ()
           else do let numbers = map read (words input) :: [Int]
                       n = numbers !! 0
                       m = numbers !! 1
                   str <- repete n []
                   input <- getLine
                   let numbers = map read (words input) :: [Int]
                       a = numbers !! 0
                       b = numbers !! 1
                   mostra str (div b m) (div a n)
                   putStrLn ""
                   main