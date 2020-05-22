
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3053

mostra :: Bool -> Bool -> Bool -> IO ()
mostra a b c | a = putStrLn "A"
             | b = putStrLn "B"
             | otherwise = putStrLn "C"

repete :: Int -> Bool -> Bool -> Bool -> IO ()
repete 0 a b c = mostra a b c
repete n a b c = do x <- readLn :: IO Int
                    case x of
                     1 -> repete (n-1) b a c 
                     2 -> repete (n-1) a c b
                     _ -> repete (n-1) c b a

main :: IO ()
main = do n <- readLn :: IO Int
          if n >= 1 && n <= 1000
           then do c <- getLine
                   if c == "A"
                    then repete n True False False
                    else if c == "B"
                          then repete n False True False
                          else repete n False False True
           else return ()