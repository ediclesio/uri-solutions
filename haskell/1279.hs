
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1279

import System.IO (isEOF)

mostra :: Int -> Int -> Int -> Int -> Int -> IO ()
mostra m4 m15 m55 m100 m400 = do if (m4 == 0 && m100 /= 0) || m400 == 0
                                  then putStrLn "This is leap year."
                                  else putStr ""
                                 
                                 if m15 == 0
                                  then putStrLn "This is huluculu festival year."
                                  else putStr ""
                                 
                                 if m55 == 0 && ((m4 == 0 && m100 /= 0) || m400 == 0)
                                  then putStrLn "This is bulukulu festival year."
                                  else putStr ""
                                 
                                 if m15 /= 0 && not ((m4 == 0 && m100 /= 0) || m400 == 0)
                                  then putStrLn "This is an ordinary year."
                                  else putStr ""

toInt :: Char -> Int
toInt c = read [c] :: Int

calcM4 :: Int -> Char -> Int
calcM4 m4 x = mod (m4*10 + toInt x) 4

calcM15 :: Int -> Char -> Int
calcM15 m15 x = mod (m15*10 + toInt x) 15

calcM55 :: Int -> Char -> Int
calcM55 m55 x = mod (m55*10 + toInt x) 55

calcM100 :: Int -> Char -> Int
calcM100 m100 x = mod (m100*10 + toInt x) 100

calcM400 :: Int -> Char -> Int
calcM400 m400 x = mod (m400*10 + toInt x) 400

repete :: String -> Int -> Int -> Int -> Int -> Int -> IO ()
repete [] m4 m15 m55 m100 m400 = mostra m4 m15 m55 m100 m400
repete (x:xs) m4 m15 m55 m100 m400 = repete xs (calcM4 m4 x) (calcM15 m15 x) (calcM55 m55 x) (calcM100 m100 x) (calcM400 m400 x)

inputs :: Bool -> IO ()
inputs b = do end <- isEOF
              if end
               then return ()
               else do y <- getLine
                       if y /= ""
                        then do if b
                                 then putStrLn ""
                                 else putStr ""
                                repete y 0 0 0 0 0
                                inputs True
                        else return ()

main :: IO ()
main = inputs False