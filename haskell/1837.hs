
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1837

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
              q = div (abs a) (abs b)
              r = mod (abs a) (abs b)
          if r == 0
           then putStrLn $ show (div a b) ++ " 0"
           else if a > 0 && b > 0
                 then putStrLn $ show q ++ " " ++ show r
                 else if a > 0
                       then putStrLn $ show (-q) ++ " " ++ show r
                       else if b > 0
                             then putStrLn $ show (-(q+1)) ++ " " ++ show (abs b - r)
                             else putStrLn $ show (q+1) ++ " " ++ show (abs b - r)