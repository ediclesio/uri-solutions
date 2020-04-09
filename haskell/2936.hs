
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2936

main :: IO ()
main = do curupira <- readLn :: IO Int
          boitata <- readLn :: IO Int
          boto <- readLn :: IO Int
          mapinguari <- readLn :: IO Int
          iara <- readLn :: IO Int
          putStrLn $ show (curupira*300 + boitata*1500 + boto*600 + mapinguari*1000 + iara*150 + 225)