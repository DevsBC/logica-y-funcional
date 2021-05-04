esnon n = if rem n 2 == 1 
    then "El numero " ++ show n ++ " es NON"
    else "El numero " ++ show n ++ " es PAR"

lista = [1..10]

encontro x = x `elem` lista


for = map esnon lista

encontrar x = if encontro x then show x else "NOPE"