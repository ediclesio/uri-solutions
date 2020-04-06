
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2582

repete :: Int -> IO ()
repete 0 = return ()
repete n = do userInput <- getLine
              let numbers = map read (words userInput) :: [Int]
                  x = (numbers !! 0)
                  y = (numbers !! 1)
                  i = x+y
                  musicas = ["PROXYCITY",
                             "P.Y.N.G.",
                             "DNSUEY!",
                             "SERVERS",
                             "HOST!",
                             "CRIPTONIZE",
                             "OFFLINE DAY",
                             "SALT",
                             "ANSWER!",
                             "RAR?",
                             "WIFI ANTENNAS"]
              if i >= 0 && i < length musicas
                then putStrLn $ (musicas !! i)
                else return ()
              repete (n-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c