----------------------------------datas
module Ejercicios where

data Moneda = Cara | Cruz deriving (Eq) ---------Objeto moneda compuesto por cara o cruz como nos interesa compararlo 
                                        ---------Usamos la clase Eq explicada mas abajo

data Dimension  = R2 (Double,Double) | R3 (Double,Double,Double) deriving Show----------Como esta COMPUESTA POR NATURALES 
                                                                                --------solo nos interesa show

-------------------------------------------MONEDA
esCara :: Moneda->Bool --------Funcion que nos dice si una moneda esta de cara o cruz
esCara l = l ==Cara

contarCaras :: [Moneda]->Int  --------------Funcion que cuenta las veces que salio cara
contarCaras lista = length(filter (esCara) lista)

 -------------------------------------------Ejemplos :
 -------contarCaras [Cara,Cruz,Cara,Cruz] 
 
-------------------------------------------MONEDA

-------------------------------------------Dimension
esEspacio :: Dimension->Bool ------Funcion que nos dice si espacio o plano
esEspacio (R2 _) =False
esEspacio (R3 _) =True

sumacuadrado :: Dimension->Double -------Funcion que hace la suma al cuadrado de los elementos para posteriormente 
                                ---------hacer el modulo
sumacuadrado (R2 a )=cuadrado(fst a)+cuadrado(fst a) --------caso plano
sumacuadrado (R3 (a,b,c)) =cuadrado( a)+cuadrado( b)+cuadrado(c)-------caso espacio

cuadrado x =x*x ----------FUncion cuadrado de dos numeros

modulo x = sqrt(sumacuadrado x)-----------FUncion que nos da el modulo de un tipo Dimension.
-------------------------------------------Ejemplos
 
-------------------------------------------Dimension



-----------------------------------------------------Polimorfismo:
eliminarElementosRecursiva::(Eq a)=>[a]->a->[a]
eliminarElementosRecursiva [] _= []
eliminarElementosRecursiva(x:xs) el 
                            |el==x =resto
                            |otherwise = x:resto
        where resto = eliminarElementosRecursiva xs el


eliminarElementos::(Eq a)=>[a]->a->[a]
eliminarElementos lista el = filter (/=el) lista
