
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1067

imparesAteX :: Int -> Int -> IO ()
imparesAteX i x = if i <= x
                   then do putStrLn $ show (i)
                           imparesAteX (i+2) x
                   else return ()

main :: IO ()
main = do x <- readLn :: IO Int
          imparesAteX 1 x