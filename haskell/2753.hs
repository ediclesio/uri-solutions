
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2753

import Data.Char (ord)
import Text.Printf (printf)

saidaFormatada :: [Char] -> IO ()
saidaFormatada [] = return ()
saidaFormatada (a:as) = do putStrLn $ show (ord a) ++ " e " ++ [a]
                           saidaFormatada as

main :: IO ()
main = do let letters = ['a'..'z']
          saidaFormatada letters