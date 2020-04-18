
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1179

mostra :: [Int] -> Int -> IO ()
mostra [] _ = return ()
mostra (x:xs) i = do if mod x 2 == 0 
                      then putStrLn $ "par["++show i++"] = "++show x
                      else putStrLn $ "impar["++show i++"] = "++show x
                     mostra xs (i+1)

repete :: Int -> [Int] -> [Int] -> IO ()
repete 0 a b = do mostra b 0
                  mostra a 0
repete n a b = do x <- readLn :: IO Int
                  if mod x 2 == 0
                   then if length a < 5
                         then repete (n-1) (a++[x]) b
                         else do mostra a 0
                                 repete (n-1) [x] b
                   else if length b < 5
                         then repete (n-1) a (b++[x])
                         else do mostra b 0
                                 repete (n-1) a [x]

main :: IO ()
main = repete 15 [] []