
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2770

import System.IO (isEOF)

repete :: Int -> Int -> Int -> IO ()
repete 0 _ _ = return ()
repete m x y = do input <- getLine
                  let numbers = map read (words input) :: [Int]
                      xi = numbers !! 0
                      yi = numbers !! 1
                  if (xi <= x && yi <= y) || (xi <= y && yi <= x)
                   then putStrLn "Sim"
                   else putStrLn "Nao"
                  repete (m-1) x y

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return ()
                    else do let numbers = map read (words input) :: [Int]
                                x = numbers !! 0
                                y = numbers !! 1
                                m = numbers !! 2
                            repete m x y
                            main