
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2591

repeat' :: Int -> Int -> String
repeat' _ 0 = []
repeat' x y = (take x (repeat 'a'))++repeat' x (y-1)

contA :: String -> Int
contA [] = 0
contA (a:as) | a == 'a' = 1 + contA as
             | otherwise = 0

getResult :: String -> String
getResult a = do let p1 = contA (tail a)
                     p2 = contA (drop 2 (reverse a))
                 "k" ++ repeat' p2 p1

loop :: Int -> IO ()
loop 0 = return ()
loop n = do input <- getLine
            if input == "ka"
             then putStrLn "ka"
             else putStrLn $ getResult input
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n