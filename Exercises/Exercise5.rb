# compare 9 numeros e indique cual es el mayor
puts "Escriba un valor"
a1 = gets.to_i
puts "Escriba un valor"
a2 = gets.to_i
puts "Escriba un valor"
a3 = gets.to_i
puts "Escriba un valor"
a4 = gets.to_i
puts "Escriba un valor"
a5 = gets.to_i
puts "Escriba un valor"
a6 = gets.to_i
puts "Escriba un valor"
a7 = gets.to_i
puts "Escriba un valor"
a8 = gets.to_i
puts "Escriba un valor"
a9 = gets.to_i

def mayor_entre_tres_numeros(a,b,c)
  if (a > b) && (a > c)
    # "El numero mayor es #{a}"
    return a
    else
    if (b > c)
      # "El numero mayor es #{b}"
      return b
      else
      if (c > b)
        # "El numero Mayor es #{c}"
        return c
        else
        # "Son iguales"
        puts "Son igules los numero"
      end
    end
  end
end

resultado_1 = mayor_entre_tres_numeros(a1, a2, a3)
resultado_2 = mayor_entre_tres_numeros(a4, a5, a6)
resultado_3 = mayor_entre_tres_numeros(a7, a8, a9)

resultado_total = mayor_entre_tres_numeros(resultado_1, resultado_2, resultado_3)
puts "El mayor entre los 9 numeros es #{resultado_total}"

