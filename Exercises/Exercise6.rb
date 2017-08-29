# Dado 5 numero Sumar numeros pares y sumar numeros impares
def es_par(num)
  if (num % 2.0 == 0)
    # si numero divido entre 2=0 es par
    return true
  else
    return false
  end
end

sumar_par = 0
sumar_impar = 0

contador = 1

while (contador <= 5)
  puts "escriba valor"
  a = gets.to_i
  if es_par(a)
    sumar_par = sumar_par + a
  else
    sumar_impar = sumar_impar + a
  end
  contador = contador + 1
end

puts "La suma de los numeros pares es #{sumar_par}"
puts "La suma de los numeros pares es #{sumar_impar}"


