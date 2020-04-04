
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1049

descobreAnimal :: String -> String -> String -> String
descobreAnimal [] _ _ = ""
descobreAnimal _ [] _ = ""
descobreAnimal _ _ [] = ""
descobreAnimal a b c | a == "vertebrado" = if b == "ave"
                                            then if c == "carnivoro"
                                                  then "aguia"
                                                  else if c == "onivoro"
                                                        then "pomba"
                                                        else ""
                                            else if b == "mamifero"
                                                  then if c == "onivoro"
                                                        then "homem"
                                                        else if c == "herbivoro"
                                                              then "vaca"
                                                              else ""
                                                  else ""
                     | a == "invertebrado" = if b == "inseto"
                                              then if c == "hematofago"
                                                    then "pulga"
                                                    else if c == "herbivoro"
                                                          then "lagarta"
                                                          else ""
                                              else if b == "anelideo"
                                                    then if c == "hematofago"
                                                          then "sanguessuga"
                                                          else if c == "onivoro"
                                                                then "minhoca"
                                                                else ""
                                                    else ""
                     | otherwise = ""

main :: IO ()
main = do str1 <- getLine
          str2 <- getLine
          str3 <- getLine
          putStrLn $ descobreAnimal str1 str2 str3