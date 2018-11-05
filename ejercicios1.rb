#Dado el array:
=begin
1. Utilizando *map* generar un nuevo arreglo con cada valor aumentado en 1.
2. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *float*.
3. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *string*.
4. Utilizando *reject* descartar todos los elementos <u>menores</u> a 5 en el array.
5. Utilizando *select* descartar todos los elementos <u>mayores</u> a 5 en el array.
6. Utilizando *inject* obtener la suma de todos los elementos del array.
7. Utilizando *group_by* agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
8. Utilizando *group_by* agrupar todos los números mayores y menores que 6.
=end
#1
 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 b = a.map do |e|
 	e + 1
 end
 p b

#2 
 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 c = a.map {|a| a.to_f}
 	p c

 #3
 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 d = a.map {|a| a.to_s}
 	p d

 #4
 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 e = a.reject {|a| a < 5}
 	p e

 #5
 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 f = a.select {|a| a < 5}
 	p f

 #6
 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 g = a.inject() { |sum, x| sum + x }
 	p g

#7
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 h = a.group_by {|ele| ele.even?}
 	p h

#8
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 i = a.group_by {|ele| ele > 6}
 	p i