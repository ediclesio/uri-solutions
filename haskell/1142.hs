repete :: Int -> Int -> IO ()
repete 0 _ = return ()
repete n i = do putStrLn $ show i ++ " " ++ show (i+1) ++ " " ++ show (i+2) ++ " PUM"
                repete (n-1) (i+4)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 1