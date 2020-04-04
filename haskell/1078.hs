
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1078

tabuada :: Int -> Int -> IO ()
tabuada i n = if i <= 10
               then do putStrLn $ show i ++ " x " ++ show n ++ " = " ++ show (i*n)
                       tabuada (i+1) n
               else return ()

main :: IO ()
main = do n <- readLn :: IO Int
          tabuada 1 n