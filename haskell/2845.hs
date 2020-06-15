
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2845

mdc :: [Int] -> Int -> [Int]
mdc a m = [x | x <- [1..minimum a],
           length [y | y <- a, mod y x == 0] == length a,
           mod m x == 0]

discoverHome :: [Int] -> Int -> Int
discoverHome a m = do let dvcs = mdc a m
                      if length dvcs == 1
                       then m
                       else discoverHome a (m+1)

loop :: Int -> IO ()
loop 0 = return ()
loop n = do input <- getLine
            let numbers = map read (words input) :: [Int]
                m = maximum numbers + 1
            putStrLn $ show (discoverHome numbers m)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n