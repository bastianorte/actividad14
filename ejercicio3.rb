opcion = 0
curso = [{nombre: "Bastian", edad: 24, comuna: "La Florida" ,genero: "M"},{nombre: "Amanda", edad: 30, comuna: "Puente Alto" ,genero: "F"}]


while opcion !=10
puts "Elije un numero"
puts "Opción 1: Permite ingresar los datos de una persona"
puts "Opción 2: Permite editar los datos de la persona."
puts "Opción 3: Permite eliminar una persona."
puts "Opción 4: Muestra la cantidad de personas ingresadas."
puts "Opción 5: Muestra las comunas de todas las personas."
puts "Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años."
puts "Opción 7: Muestra la suma de las edades de todas las personas."
puts "Opción 8: Muestra el promedio de las edades del grupo."
puts "Opción 9: Muestra dos listas de personas, una por cada género."
puts "Opción 10: Para salir"

opcion = gets.chomp.to_i

case opcion
when 1
	puts "Introduzca el Nombre, edad, comuna y genero"
	nombre = gets.chomp.to_s
	edad = gets.chomp.to_i
	comuna = gets.chomp.to_s
	genero = gets.chomp.to_s
	tmp_hash = {
		nombre: nombre,
		edad: edad,
		comuna: comuna,
		genero: genero
	}
	curso.push(tmp_hash)

puts curso
when 2
	puts "Introduzca el Nombre, edad, comuna y genero"
	nombre = gets.chomp.to_s
	edad = gets.chomp.to_i
	comuna = gets.chomp.to_s
	genero = gets.chomp.to_s
	tmp_hash = {
		nombre: nombre,
		edad: edad,
		comuna: comuna,
		genero: genero
	}
	curso.push(tmp_hash)

	puts curso
when 3
	puts "Que persona desea eliminar"

	x = gets.chomp.to_s
	suma = 0
	curso.each do |borrado|
	curso.delete_at(suma) if borrado.has_value?(x)
	suma += 1
	puts curso
end
when 4

	suma = 0
	curso.each {|x| suma += 1}
	puts "hay #{suma} cantidad de personas"

when 5
puts curso.map{|x| x[:comuna] }
when 6
	suma = 0
	personas = curso.select {|x| x[:edad] if x[:edad]>20 && x[:edad]<25 }
	puts "hay #{personas} personas entre 20 y 25 años"

when 7
	suma = 0
	curso.each {|x| suma += x[:edad]}
	puts "La suma de las edades del grupo es #{suma}"

when 8
	suma = 0
	curso.each {|x| suma += x[:edad]}
	promedio = suma/curso.length
	puts "#El promedio de las edades del grupo es #{promedio}"

when 9
	hombres = curso.select {|x| x[:genero] == "M"}
	mujeres = curso.select {|x| x[:genero] == "F"}

	puts hombres
	puts mujeres
end
end