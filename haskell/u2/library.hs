-- Con mucho dolor en mi corazon y alma dejo esta libreria con todas las funciones de los ejercicios
-- ATTE JUAN CARLOS ARANDA ALONSO


-- EJERCICIO 1 --
multNumberByItself :: Num a => a -> a
multNumberByItself x = x * x

multNumbers :: Num a => a -> a -> a
multNumbers x y = x * y

sumFunctions :: Num a => a -> a -> a -> a
sumFunctions x y z = multNumberByItself x + multNumbers y z


-- EJERCICIO 2 --
powInt :: (Integral b, Num a) => a -> b -> a
powInt x y = x ^ y

powFloat :: Floating a => a -> a -> a
powFloat x y = x ** y


-- EJERCICIO 3 --
modulo x y = if x `mod` y == x then "Si es modulo" else "No es modulo"

-- EJERCICIO 4 --
red1 :: Double -> Integer
red1 = round

red2 :: Double -> Integer
red2 = ceiling

red3 :: Double -> Integer
red3 = floor


-- EJERCICIO 5 --
esModulo x y = if x `mod` y == 0 then "Si es modulo" else "No es modulo"


-- EJERCICIO 6 --
esnon n = rem n 2 == 1


-- EJERCICIO 7 --
esNon n = if rem n 2 == 1
    then "El numero " ++ show n ++ " es Non"
    else "El numero " ++ show n ++ " es Par"


-- EJERCICIO 8 --
sumAndIsNon a b = if rem (a + b) 2 == 1
    then "La suma de los numeros " ++ show a ++ " y " ++ show b ++ " es NON"
    else "La suma de los numeros " ++ show a ++ " y " ++ show b ++ " es PAR"

sumAndNon x y z = if x < z then sumAndIsNon y  z else sumAndIsNon x z


-- EJERCICIO 9 --
lista = [98,34,26,32,18]

major = maximum lista
minor = minimum lista

getList = [major, minor]

result = esNon major


-- EJERCICIO 10 --
encontro x lista = x `elem` lista

main = do
  putStrLn "Ingresa numero a encontrar: "
  x <- readLn :: IO Int
  if encontro x [1..1000]
    then print ("El numero " ++ show x ++ " se encuentra en la lista")
    else print ("El numero " ++ show x ++ " no se encuentra en la lista")
  if esnon x
    then print "Y es Non"
    else print "Y es Par"
  putStrLn "Gracias crack!"


-- EJERCICIO 11 --
list = ['E'..'Z']

len n = length list - n;

word = list!! len 7

takeTen = take 10 list

newList = takeTen ++ reverse takeTen


-- EJERCICIO 12 --
for = map esNon lista

encontrar x = if encontro x [1..10] then show x else "NOPE"  


-- EJERCICIO 13 --
lista1 = [10,20,30,40,50]

lista2 = [1..30]

encontroIf x = if x `elem` lista2 then x else 0 

printN n = n > 0

elementos = map encontroIf lista1

mostrar = filter printN elementos


-- EJERCICIO 14 --
printRange n = n >= 10 && n <= 20

mostrarRango = filter printRange elementos