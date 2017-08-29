# haga un algoritmo que dado un numero n mayor que 10
# muestre todos los numeros primos que existen entre 1 y n
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

if (n < 10)
  puts "El numero no es valido digite un numero mayor a 10"
else
  contador = 1
  primos = []

  while(contador <= n)
    if(es_primo(contador))
      primos << contador
    end
    contador = contador + 1
  end
  puts "los numeros primos son: "
  puts primos.join(", ")
end
