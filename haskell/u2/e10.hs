encontro x = x `elem` [1..1000]

esnon n = rem n 2 == 1

main = do
  putStrLn "Ingresa numero a encontrar: "
  x <- readLn :: IO Int
  if encontro x
    then print ("El numero " ++ show x ++ " se encuentra en la lista")
    else print ("El numero " ++ show x ++ " no se encuentra en la lista")
  if esnon x
    then print "Y es Non"
    else print "Y es Par"
  putStrLn "Gracias crack!"



  