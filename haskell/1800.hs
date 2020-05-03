
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1800

mostra :: Int -> [Int] -> IO ()
mostra 0 _ = return ()
mostra q s = do c <- readLn :: IO Int
                if c == s !! c
                 then do putStrLn "0"
                         mostra (q-1) s
                 else do putStrLn "1"
                         mostra (q-1) (take c s ++ [c] ++ drop (c+1) s)

nums :: [Int]
nums = take 1001 (repeat 0)

arr :: [Int] -> [Int] -> [Int]
arr [] b = b
arr (a:as) b = arr as (take a b ++ [a] ++ drop (a+1) b)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              q = numbers !! 0
              e = numbers !! 1
          input <- getLine
          let s = arr (map read (words input) :: [Int]) nums
          mostra q s