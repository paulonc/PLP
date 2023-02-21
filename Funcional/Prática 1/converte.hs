import Text.Printf (printf)

conversorTempo :: Float -> String -> String -> Float
conversorTempo num atual converte
    | atual == "HORA" && converte == "MINUTO" = num * 60
    | atual == "HORA" && converte == "SEGUNDO" = num * 3600
    | atual == "MINUTO" && converte == "SEGUNDO" = num * 60
    | atual == "MINUTO" && converte == "HORA" = num / 60
    | atual == "SEGUNDO" && converte == "HORA" = num / 3600
    | atual == "SEGUNDO" && converte == "MINUTO" = num / 60
    |otherwise = -1

main :: IO()
main = do
    num <- readLn :: IO Float
    atual <- getLine :: IO String
    converte <- getLine :: IO String
    let resultado = conversorTempo num atual converte
    if resultado == -1 then printf "Voce digitou algo errado\n"
    else printf "%.1f %s(S) e igual a %.1f %s(S)\n" num atual resultado converte