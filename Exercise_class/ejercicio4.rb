#Desarrollar un algoritmo que permita calcular la utilidad que un
#trabajador recibe en el reparto anual de utilidades, si este se le
#asigna como un porcentaje de su salario mensual que depende de su
#antigüedad en la empresa de acuerdo con la siguiente tabla:

def digite_salario
  puts "Ingresa valor del salario mensual"
  salario_mensual = gets.to_i
  return salario_mensual
end


puts "Ingresa la cantidad de meses trabajados"
meses_trabajados = gets.to_i

if (meses_trabajados <= 11)
  total_salario = digite_salario * meses_trabajados
  utilidad = total_salario * 0.05
  puts "La utilidad es #{utilidad}"
elsif (meses_trabajados >= 12 && meses_trabajados <= 23)
  total_salario = digite_salario * meses_trabajados
  utilidad = total_salario * 0.07
  puts "La utilidad es #{utilidad}"
elsif (meses_trabajados >= 24 && meses_trabajados <= 59) #2 a menos de 5 años
  total_salario = digite_salario * meses_trabajados
  utilidad = total_salario * 0.10
  puts "La utilidad es #{utilidad}"
elsif meses_trabajados >= 60 && meses_trabajados <= 119 #5 a menos de 10 años
  total_salario = digite_salario * meses_trabajados
  utilidad = total_salario * 0.15
  puts "La utilidad es #{utilidad}"
elsif meses_trabajados >= 120  #10 años o mas
  total_salario = digite_salario * meses_trabajados
  utilidad = total_salario * 0.20
  puts "La utilidad es #{utilidad}"
end



