# de la siguiente forma iteramos sobre cada uno de los siguientes caracteres
num_array = [1, 2, 3, 4, 5]

num_array.each do |numeros|
puts numeros
end

#muestra lo que se encuentra en las llaves con sus valores
contacts_hash = {"Aldo" => 12345, "Pedro" => 6789, "Ana" => 555555}
contacts_hash.each do |key, value|
  puts "La llaves es #{key} y el valor es #{value}"
end

# muestra lo que esta en las llaves
contacts_hash.each_key do |key|
  puts "La llaves es #{key}"
end

# muestra lo que esta el resultado de las llaves
contacts_hash.each_value do |value|
  puts "La llaves es #{value}"
end

# muestra el nombre de Aldo letra por letra de abajo hacia arriba
"Aldo".each_char do |chr|
puts chr
end

# ejecuta 10 veces lo que esta en puts
10.times do
  puts "Este es el iterador times"
end

# ejecuta 10 veces lo que esta en puts
10.times do |time|
  puts "Este es el iterador #{time}"
end






