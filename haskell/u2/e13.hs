
lista1 = [10,20,30,40,50]

lista2 = [1..30]

encontro x = if x `elem` lista2 then x else 0 

printN n = n > 0

elementos = map encontro lista1

mostrar = filter printN elementos