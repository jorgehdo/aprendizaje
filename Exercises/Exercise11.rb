# haga un algoritmo que dado 2 numeros n y m mayores que
# 10 muestre todos los numeros primos que existen entre m y n.

puts "Digite un numero mayor a 10"
m = gets.to_i
puts "Digite un numero mayor a 10"
n = gets.to_i

def es_primo(valor)
  contador = 2
  while(contador <= valor / 2)
    if(valor % contador == 0)
      return false
    end
    contador = contador + 1
  end
  return valor
end



if(m < 10 && n < 10 && m > n)
  puts"el numero no es valido escriba un numero mayor a 10"
else
  contador = m
  primos = []

  while (contador <= n)
    if (es_primo(contador))
      primos << contador
    end
    contador = contador + 1
  end
  puts "Los numeros primos:"
  puts primos.join(", ")
end