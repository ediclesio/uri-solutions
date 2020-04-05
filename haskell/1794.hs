
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1794

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
              la = numbers !! 0
              lb = numbers !! 1
          input <- getLine
          let numbers = map read (words input) :: [Int]
              sa = numbers !! 0
              sb = numbers !! 1
          if n >= la &&
             n <= lb &&
             n >= sa &&
             n <= sb
           then putStrLn $ "possivel"
           else putStrLn $ "impossivel"