
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2165

main :: IO ()
main = do t <- getLine
          if length t <= 140
            then putStrLn $ "TWEET"
            else putStrLn $ "MUTE"