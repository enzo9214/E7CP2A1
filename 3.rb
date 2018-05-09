personas = {    "enzo" => {edad: 26, comuna:"Peñalolen", genero: "Masculino"},
			    "camila" => {edad: 25, comuna:"Peñalolen", genero: "Femenino"}
		   }

           


def agregar_persona(hash, nombre, edad, comuna, genero)
	hash.store(nombre,{edad: edad, comuna: comuna, genero: genero})
	print hash
end

def editar_persona(hash, nombre, edad, comuna, genero)
	if hash.keys.include?(nombre)
		hash[nombre] = {edad: edad, comuna: comuna, genero:genero }
	end	
end

def eliminar_persona(hash, nombre)
	if hash.keys.include?(nombre)
		hash.delete(nombre)
	end	
end


opcion = 0

while true
	puts "Ingrese una opcion:"
    opcion = gets.chomp.to_i

    case opcion
		when 1
			puts "Crear"
			puts "Ingrese nombre"
			data1 = gets.chomp
			puts "Ingrese edad"
			data2 = gets.chomp.to_i
			puts "Ingrese comuna"
			data3 = gets.chomp
			puts "Ingrese genero"
			data4 = gets.chomp
			agregar_persona(personas, data1, data2, data3, data4)

		when 2
			puts "Editar"
			puts "Ingrese nombre"
			data1 = gets.chomp
			puts "Ingrese edad"
			data2 = gets.chomp.to_i
			puts "Ingrese comuna"
			data3 = gets.chomp
			puts "Ingrese genero"
			data4 = gets.chomp
			editar_persona(personas, data1, data2, data3, data4)

		when 3
			puts "Eliminar"
			puts "Ingrese nombre"
			data1 = gets.chomp
			if eliminar_persona(personas, data1) != ""
				puts "Eliminado"
			end	

		when 4
			puts "Hay #{personas.keys.count()} personas"
		
		when 5
			array = []
			personas.values.each { |x|  array.push(x[:comuna]) }
			print array	
		
		when 6
			array = []
			personas.values.each { |x|  array.push x if x[:edad] >= 20 && x[:edad] >= 25}
			print array		

		when 7
			suma = 0
			personas.values.each { |x|  suma += x[:edad]  }
			puts suma
		
		when 8
			suma = 0
			personas.values.each { |x|  suma += x[:edad]  }
			puts suma/personas.count
		
		when 9
			array_masculino = []
			array_femenino = []

			personas.each do |k,v|
				if v[:genero] == "Masculino"
					array_masculino.push(k)
				end	
				if v[:genero] == "Femenino"
					array_femenino.push(k)
				end	
			end	

			print array_masculino
			print array_femenino

		when 10	
			break	
	end
end