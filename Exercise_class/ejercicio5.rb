#En una tienda de descuento se efectúa una promoción en la cual se
#hace un descuento sobre el valor de la compra total según el color
#de la bolita que el cliente saque al pagar en caja. Si la bolita es de
#color blanco no se le hará descuento alguno, si es verde se le hará un
#10% de descuento, si es amarilla un 25%, si es azul un 50% y si es
#roja un 100%. Desarrollar un algoritmo que permita determinar la
#cantidad final que el cliente deberá pagar por su compra. se sabe que
#solo hay bolitas de los colores mencionados.



def bolita_ale
  numero = %w[ 1 2 3 4 5 ]
  nume_aleat = rand(numero.length)
  return nume_aleat
end

def verde_1(valor)
  descuento = valor * 0.10
  total_des = valor - descuento
  return total_des
end

def amarilla_1(valor)
  descuento = valor * 0.25
  total_des = valor - descuento
  return total_des
end

def azul_1(valor)
  descuento = valor * 0.50
  total_des = valor - descuento
  return total_des
end

def roja_1(valor)
  descuento = valor * 1
  total_des = valor - descuento
  return total_des
end


puts "\nIngrese el valor de la compra: "
valor = Integer(gets.chomp)

blanco = 0
verde = 1
amarilla = 2
azul = 3
roja = 4

if bolita_ale == blanco
  puts "Como la balota fue blanca no tiene descuento valor a pagar es #{valor}"
elsif bolita_ale == verde
  total_pagar = verde_1(valor)
  puts "Como la balota fue verde tiene el 10 el valor a pagar es #{total_pagar}"
elsif bolita_ale == amarilla
  total_pagar = amarilla_1(valor)
  puts "Como la balota fue amarilla tiene el 25 el valor a pagar es #{total_pagar}"
elsif bolita_ale == azul
  total_pagar = azul_1(valor)
  puts "Como la balota fue azul tiene el 50 el valor a pagar es #{total_pagar}"
elsif bolita_ale == roja
  total_pagar = roja_1(valor)
  puts "Como la balota fue roja tiene el 100 el valor a pagar es #{total_pagar}"
end


