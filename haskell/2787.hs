
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2787

isPar :: Int -> Bool
isPar x = mod x 2 == 0

isImpar :: Int -> Bool
isImpar x = mod x 2 == 1

main :: IO ()
main = do l <- readLn :: IO Int
          c <- readLn :: IO Int
          if (isPar l && isPar c) || (isImpar l && isImpar c)
            then putStrLn $ "1"
            else putStrLn $ "0"