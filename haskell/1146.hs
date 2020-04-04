
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1146

sequencia :: [Int] -> String
sequencia [] = ""
sequencia [l] = show l
sequencia (l:ls) = show l ++ " " ++ (sequencia ls)

main :: IO ()
main = do x <- readLn :: IO Int
          if x == 0
            then return ()
            else do let numbers = [1..x]
                    putStrLn $ sequencia numbers
                    main