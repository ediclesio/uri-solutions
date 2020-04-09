
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2949

import Data.Sequence

qtdChar :: [Char] -> Char -> Int -> Int
qtdChar [] _ q = q
qtdChar (a:as) c q | a == c = qtdChar as c (q+1)
                   | otherwise = qtdChar as c q

printResultado :: [Char] -> IO ()
printResultado tipos = do putStrLn $ show (qtdChar tipos 'X' 0) ++ " Hobbit(s)"
                          putStrLn $ show (qtdChar tipos 'H' 0) ++ " Humano(s)"
                          putStrLn $ show (qtdChar tipos 'E' 0) ++ " Elfo(s)"
                          putStrLn $ show (qtdChar tipos 'A' 0) ++ " Anao(s)"
                          putStrLn $ show (qtdChar tipos 'M' 0) ++ " Mago(s)"

repete :: Int -> [Char] -> IO ()
repete 0 tipos = printResultado tipos
repete n tipos = do input <- getLine
                    let t = last (words input)
                    repete (n-1) (t++tipos)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n []