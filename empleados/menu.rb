require './programa.rb'

def opcion_1(_lista)
  puts "Escriba nombre del empleado"
  nombre = gets.chomp
  puts "Escriba apellido del empleado"
  apellido = gets.chomp
  empleado = Empleado.new(nombre, apellido)
  _lista.agregar(empleado)
end

def opcion_2(lista)
  puts "la cantidad son #{lista.cuantos_hay}"
end

def opcion_3(lista)
  lista.mostrar_empleados
end

def opcion_4(lista)
  puts "Digite el numero del empleado a borrar"
  indice = gets.to_i
  lista.quitar(indice)
  lista.mostrar_empleados
end


def opcion_5(lista)
  puts "Si desea buscar por nombre marque (n) o apellido marque (a)"
  input = gets.chomp
  if input == "n"
    puts "Escriba nombre"
    nombre = gets.chomp
    lista.buscar_nombre(nombre)
  else
    if input == "a"
      puts "Escriba apellido"
      apellido = gets.chomp
      lista.buscar_apellido(apellido)
    else
      puts "***** Digite las letras validas *****"
    end
  end
end

puts "Hola para continuar marque las siguientes opciones: "

lista = ListaEmpleados.new
accion = 0
while (accion != 6)
  puts "1 agrgar empleado"
  puts "2 cuantos hay"
  puts "3 mostrar empleados"
  puts "4 quitar empleado"
  puts "5 buscar empleado"
  puts "6 salir"
  accion = gets.to_i

  case accion
    when 1
    opcion_1(lista)
    when 2
    opcion_2(lista)
    when 3
    opcion_3(lista)
    when 4
    opcion_4(lista)
    when 5
    opcion_5(lista)
  when 6
    next
  else
    puts "***** Operacion no reconocida *****"
  end
end
