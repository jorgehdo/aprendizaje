arreglo = [12,2,5,1,32,456,22,8,1,3,34]

num = gets.to_i

def buscar(arreglo, num)
  for i in 0...(arreglo.size-1)
    if (arreglo[i] == num)
      return "el numero #{num} si esta en la posicion #{i}"
    end
  end
    return "el numero digitado no esta"
end

puts buscar(arreglo, num)