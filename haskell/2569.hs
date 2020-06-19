
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2569

remove7 :: String -> String
remove7 [] = []
remove7 (x:xs) | x == '7' = '0':remove7 xs
               | otherwise = x:remove7 xs

calc :: Int -> Int -> Char -> String
calc x y op | op == '+' = show (x+y)
            | otherwise = show (x*y)

main :: IO ()
main = do input <- getLine
          let arr = words input
              a = read (remove7 (arr !! 0)) :: Int
              o = head (arr !! 1)
              b = read (remove7 (arr !! 2)) :: Int
              r = read (remove7 (calc a b o)) :: Int
          putStrLn $ show r