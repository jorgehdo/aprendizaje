# de 0 a 40 la hora vale 3073
# de 41 a 48 la hora vale 6147
# y el resto al reiple 9219
=begin


puts "Ingresa la cantidad de horas laboradas"
a = gets.to_i

cantid_horas = 40
cantid_horas_48 = 48
valor_hora = 3073
valor_hora_doble = 6147
valor_hora_triple = 9219
primeras_40 = 122920
primeras_48 = 172096

if (a <= 40)
  resultado = a * valor_hora
  puts "el valor de las horas es #{resultado}"
elsif a >= 41 && a <= 48
  horas = a - cantid_horas
  resultado_1 = horas * valor_hora_doble
  total = resultado_1 + primeras_40
  puts "el valor de las horas #{total}"
elsif a > 48
  horas = a - cantid_horas_48
  resultado_1 = horas * valor_hora_triple
  total = resultado_1 + primeras_48
  puts "el valor de las horas #{total}"
end

=end


puts "Ingrese la cantidad de horas normales mas extras"
a = gets.to_i
puts "Ingrese el valor de la hora normal"
valor_hora_normal = gets.to_i

cantidad_horas_40 = 40
cantidad_horas_48 = 48
valor_doble = valor_hora_normal * 2
valor_triple = valor_hora_normal * 3

resultado_vlr = valor_hora_normal * cantidad_horas_40

def cantidad_hr_doble
  return 48 - 40
end

if (a <= 40)
  puts "El valor de las horas es #{resultado_vlr}"
elsif (a >= 41 && a <= 48)
  cantidad_doble = a - cantidad_horas_40
  total = cantidad_doble * valor_doble
  total_hrs_doble = total + resultado_vlr
  puts "El total a pagar de horas normales mas extras es #{total_hrs_doble}"
elsif (a > 48)
  cantidad_triple = a - cantidad_horas_48 # si son 50 entonces llevo 2 horas
  total_triple =  cantidad_triple * valor_triple # seria 2*3000 6000
  total_doble = cantidad_hr_doble * valor_doble # 16000
  total_hrs_triple = total_triple + total_doble + resultado_vlr
  puts "El total a pagar de horas normales mas extras es #{total_hrs_triple}"
end

