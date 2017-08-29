# Dado dos numeros escriba cual es el numero mayor o cual es
# el numero menor

puts "Digite primer valor"
a = gets.to_i
puts "Digite el segundos valor"
b = gets.to_i

if (a > b)
  puts "el numero mayor es #{a}"
elsif (a < b)
  puts "El numeor mayor es #{b}"
  else
  puts "Son iguales"
end

if (a - b > 0)
  puts "El numero mayor es #{a}"
else
  if (a - b < 0)
  puts "El numero mayor es #{b}"
  else
    puts "Son iguales"
  end
end



