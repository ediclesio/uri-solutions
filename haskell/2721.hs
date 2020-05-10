
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2721

renas = ["Rudolph","Dasher","Dancer",
        "Prancer","Vixen","Comet",
        "Cupid","Donner","Blitzen"]

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              s = sum numbers
          putStrLn $ renas !! (mod s 9)