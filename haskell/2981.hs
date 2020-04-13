
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2981

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) ::[Int]
              c = numbers !! 0
              g = numbers !! 1
              d = div c g
          if d <= 9
           then putStrLn $ "A UFSC fecha dia " ++ show (d+20+1) ++ " de setembro."
           else putStrLn $ "A UFSC fecha dia " ++ show (d-10+1) ++ " de outubro."