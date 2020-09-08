
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1238

merge :: String -> String -> String
merge [] [] = []
merge a [] = a
merge [] b = b
merge (a:as) (b:bs) = a:b:(merge as bs)

loop :: Int -> IO ()
loop 0 = return ()
loop n = do input <- getLine
            let arr = words input
                a = (arr !! 0)
                b = (arr !! 1)
            putStrLn (merge a b)
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n