# haga un algoritmo que pida un contador llamado n.
#luego debe pedir n numeros y calcular el numero mayor de eso
# n numeros

puts "Cuantos numeros quiere digitar"
cantidad_de_numeros = gets.to_i

def pedir_numero()
  puts "digite el numero"
  return gets.to_i
end

def calcular_mayor(numero_a, numero_b)
  if(numero_a > numero_b)
    return numero_a
  else
    return numero_b
  end
end

contador = 0
mayor = 0

while(contador <= cantidad_de_numeros-1)
  numero_digitado = pedir_numero()
  mayor = calcular_mayor(mayor, numero_digitado)
  contador = contador + 1
end

puts "el numero mayor es #{mayor}"

