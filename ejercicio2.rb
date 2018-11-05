=begin
	
rescue nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
~~~

Se pide:
 
1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método *.select*.
- Utilizando *.map* crear una arreglo con los nombres en minúscula.
- Utilizando *.select* para crear un arreglo con todos los nombres que empiecen con P.
- Utilizando *.map* crear un arreglo único con la cantidad de letras que tiene cada nombre.
- Utilizando *.map* y *.gsub* eliminar las vocales de todos los nombres. => e
	
end
=end

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
#1
nombres_largos = nombres.select do |nombres|
  nombres.length < 5
end
 	p nombres_largos

#2
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

nombre_minuscula = nombres.map {|nombres| nombres.downcase}
p nombre_minuscula

#3
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

p nombres.select {|nombre| nombre.start_with?("P")} 

#4
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
nombres_cantidad = nombres.map {|nombre| nombre.length}
p nombres_cantidad


#5
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
nombres_sin_vocales = nombres.map do |nombre| 
  nombre.downcase.gsub(/[aeiou]/, '') 
end
p nombres_sin_vocales