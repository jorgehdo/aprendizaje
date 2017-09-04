#Desarrollar un algoritmo que permita leer 2 números, si los números son
#iguales que los multiplique, si el primero es mayor que el segundo los reste y si
#no que los sume.
puts "Digite un valor"
a = gets.to_i
puts "Digite un valor"
b = gets.to_i

if (a == b)
  resultado = a * b
  puts "como son iguales se multiplica : #{resultado}"
elsif (a > b)
resultado = (a - b)
  puts "como el primero es mayor  se resta : #{resultado}"
else
  resultado = a + b
  puts "como el segundo es mayor se suma : #{resultado}"
end