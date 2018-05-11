nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
puts "#1"
mayores = nombres.select {|i| i.length>5}
puts "#{mayores}"

puts "#2"
minusculas = nombres.map {|i| i.downcase}
puts "#{minusculas}"

puts "#3"
letrape = nombres.select {|i| i.start_with?("P")}
puts "#{letrape}"

puts "#4"
cantidad = nombres.map {|i| i.length}
puts "#{cantidad}"

puts "#5"
vocales = nombres.map {|i| i.gsub(/[aeiou]/,'')}
puts "#{vocales}"