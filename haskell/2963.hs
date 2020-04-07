
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2963

resultado :: [Int] -> Int -> IO ()
resultado [] _ = putStrLn "S"
resultado (x:xs) b | x > b = putStrLn "N"
                   | otherwise = resultado xs b

repete :: Int -> [Int] -> IO ()
repete 0 nums = resultado nums ((reverse nums) !! 0)
repete n nums = do x <- readLn :: IO Int
                   repete (n-1) (x:nums)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n []