esnon a b = if rem (a + b) 2 == 1
    then "La suma de los numeros " ++ show a ++ " y " ++ show b ++ " es NON"
    else "La suma de los numeros " ++ show a ++ " y " ++ show b ++ " es PAR"


sumAndNon x y z = if x < z then esnon y  z else esnon x z
