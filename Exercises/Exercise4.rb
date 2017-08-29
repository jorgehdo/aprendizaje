# Se piden 3 numeros A,B y C y devuelva el numero mayor
#de los 3

puts "Digite primer valor"
a = gets.to_i
puts "Digite segundo valor"
b = gets.to_i
puts "Digite tercer Valor"
c = gets.to_i

if (a > b) && (a > c)
  puts "El numero mayor es #{a}"
else
  if (b > c)
    puts "El numero mayor es #{b}"
  else
    if (c > b)
      puts "El numero Mayor es #{c}"
    else
      puts "Son iguales"
    end
  end
end



