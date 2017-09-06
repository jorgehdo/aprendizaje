#Desarrollar un algoritmo que permita leer tres números diferentes,
#analizarlos e imprimir el número mayor de los tres.

puts "Digite primer valor"
a = gets.to_i
puts "Digite segundo valor"
b = gets.to_i
puts "Digite tercer valor"
c = gets.to_i

if a > b && a > c
  puts "el numero mayor es #{a}"
elsif b > c
  puts "el numero mayor es #{b}"
elsif c > b
  puts "el numero mayor es #{c}"
else
  puts "los 3 numeros son iguales"
end
