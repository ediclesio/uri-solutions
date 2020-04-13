
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2927

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              c = numbers !! 1
              x = numbers !! 2
              y = numbers !! 3
          if a + x + y >= c
           then if x > div y 2
                 then putStrLn "Caio, a culpa eh sua!"
                 else putStrLn "Igor bolado!"
           else putStrLn "Igor feliz!"