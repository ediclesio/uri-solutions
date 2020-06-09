
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1080

getIndex :: [Int] -> Int -> Int
getIndex (x:xs) y | x == y = 1
                  | otherwise = 1 + getIndex xs y

loop :: Int -> IO [Int]
loop 0 = return []
loop n = do r <- loop (n-1)
            x <- readLn :: IO Int
            return (r ++ [x])

main :: IO ()
main = do arr <- loop 100
          let m = maximum arr
              i = getIndex arr m
          putStrLn $ show m ++ "\n" ++ show i