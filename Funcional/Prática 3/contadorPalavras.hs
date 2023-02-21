contador :: [String] -> Int -> Int
contador [] cont = cont
contador (t : ts) cont = contador ts (cont + 1)


main :: IO()
main = do
    frase <- getLine :: IO String
    print (contador (words frase) 0)