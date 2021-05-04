multNumberByItself :: Num a => a -> a
multNumberByItself x = x * x

multNumbers :: Num a => a -> a -> a
multNumbers x y = x * y

sumFunctions :: Num a => a -> a -> a -> a
sumFunctions x y z = multNumberByItself x + multNumbers y z