# realizar un algoritmo que me de los numero divisores de n numeros
# adicionandolos a un arreglo
puts "Digite el numero"
n = gets.to_i

contador = 1
divisores = []

while (contador <= n)
  if (n % contador == 0)
    # en ruby hay varias maneras de agregar un numero a un
    #arreglo
    # 1. divisores << contador
    # 2. divisores.push(contador)
   divisores.push(contador)
  end
  contador = contador + 1
end

puts "los diisores son: #{divisores}"
puts divisores.join(", ")

