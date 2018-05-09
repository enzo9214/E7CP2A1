nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

nombres_largos = nombres.select{|v| v.length > 5}

print nombres_largos
puts "\n***********************************"
print nombres_largos.map{|v| v.downcase }
puts "\n***********************************"
nombres_con_p = nombres.select{|v| v[0] == "P"}
print nombres_con_p
puts "\n***********************************"
print nombres_largos.map{|v| v.length}
puts "\n***********************************"
print nombres_largos.map{|v| v.gsub(/[aeiou]/,"*")}
puts "\n***********************************"
