# realizar un algoritmo que me de los numero divisores de n numeros

puts "Digite el numero"
n = gets.to_i

contador = 1

while (contador <= n)
  if (n % contador == 0)
    puts "El numero #{contador} es divisor de #{n}"
  end
  contador = contador + 1
  sleep(1)
end
