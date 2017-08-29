puts "para realizar operaciones marque las siguientes opciones"

def pedir_valor()
  puts "digite el numero"
  return gets.to_i
end

def op_suma(num1, num2)
  suma = num1 + num2
  return suma
end


def op_resta(num1, num2)
  resta = num1 - num2
  return resta
end

def op_multiplicacion(num1, num2)
  multiplicacion = num1 * num2
  return multiplicacion
end

def op_division(num1, num2)
  if num2 != 0
    division = num1 / num2
  else
    division = "la division no es posible"
  end
  return division
end


item = 0

while (item != 5)
  puts "1 para suma"
  puts "2 para resta"
  puts "3 para multiplicacion"
  puts "4 para divicion"
  puts "5 para salir"
  item = gets.to_i

  case item
  when 1
    valor1 = pedir_valor()
    valor2 = pedir_valor()
    resultado = op_suma(valor1, valor2)
    puts "el resultado es: #{resultado}"

  when 2
    valor1 = pedir_valor()
    valor2 = pedir_valor()
    resultado = op_resta(valor1, valor2)
    puts "el resultado es: #{resultado}"
  when 3
    valor1 = pedir_valor()
    valor2 = pedir_valor()
    resultado = op_multiplicacion(valor1, valor2)
    puts "el resultado es: #{resultado}"
  when 4
    valor1 = pedir_valor()
    valor2 = pedir_valor()
    resultado = op_division(valor1, valor2)
    puts "el resultado es: #{resultado}"
  when 5
    puts "muchas gracias"
  else
    puts "Digite un valor valido"
  end
end








