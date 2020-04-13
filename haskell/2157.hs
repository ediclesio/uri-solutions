
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2157

imprimeSeqEspelho :: [Int] -> IO ()
imprimeSeqEspelho [] = return ()
imprimeSeqEspelho (x:xs) = do imprimeSeqEspelho xs
                              putStr $ reverse $ show x

imprimeSeq :: [Int] -> IO ()
imprimeSeq [] = return ()
imprimeSeq (x:xs) = do putStr $ show x
                       imprimeSeq xs

repete :: Int -> IO ()
repete 0 = return ()
repete c = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  b = numbers !! 0
                  e = numbers !! 1
              imprimeSeq [b..e]
              imprimeSeqEspelho [b..e]
              putStrLn ""
              repete (c-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c