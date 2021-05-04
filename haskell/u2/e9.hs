esnon n = if rem n 2 == 1
    then "El numero " ++ show n ++ " es Non"
    else "El numero " ++ show n ++ " es Par"

lista = [98,34,26,32,18]

major = maximum lista
minor = minimum lista

getList = [major, minor]

result = esnon major