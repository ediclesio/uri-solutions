
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2028

import System.IO (isEOF)

mostra :: [Int] -> IO ()
mostra [x] = putStrLn $ show x ++ "\n"
mostra (x:xs) = do putStr $ show x ++ " "
                   mostra xs

getNumbers :: Int -> [Int]
getNumbers 0 = [0]
getNumbers n = getNumbers (n-1) ++ (take n (repeat n))

repete :: Int -> IO ()
repete c = do end <- isEOF
              if end
               then return ()
               else do n <- readLn :: IO Int
                       let numbers = getNumbers n
                       putStr $ "Caso " ++ show c ++ ": " ++ show (length numbers)
                       if length numbers == 1
                        then putStrLn " numero"
                        else putStrLn " numeros"
                       mostra numbers
                       repete (c+1)

main :: IO ()
main = repete 1