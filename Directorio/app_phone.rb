require './Directorio.rb'

def menu_1(list)
  puts "Escriba nombre y apellido del contacto"
  nombre = gets.chomp
  puts "Escriba numero Telefonico"
  telefono = gets.to_i
  contacto = Directory.new(nombre, telefono)
  list.add_cont(contacto)
  40.times { print "*" }
  puts "\nEl contacto ha sido agregado"
  40.times { print "*" }
end

def menu_2(list)
  puts "Escriba el nombre del contacto a borrar"
  nombre = gets.chomp
  list.borrar_por_nombre(nombre)
end

def menu_3(list)
  list.show_all
end

def menu_4(list)
  puts "Escriba el nombre del contacto a buscar"
  nombre = gets.chomp
  list.show_phone(nombre)
end

def menu_5(list)
  puts "Desea borrar todos los contactos? s/n"
  input = gets.chomp
  if input == "s"
    list.remove_all
    40.times { print "*" }
    puts "\nLos contactos han sido borrados\n"
    40.times { print "*" }
  elsif input == "n"
    puts "Operacion cancelada"
  else
    puts "Digite la letra correcta"
  end
end




puts "*** Para continuar marque las siguientes opciones: *** "

list = ListContacts.new

input = 0
while (input != 6)
  puts
  puts "1 Agregar un contacto"
  puts "2 Borrar un contacto en base al nombre"
  puts "3 Mostrar todos los contactos"
  puts "4 Mostrar un numero en base al nombre"
  puts "5 Borrar todos los contactos"
  puts "6 Salir de la aplicacion"

  input = gets.to_i
  case input
    when 1
    menu_1(list)
    when 2
      menu_2(list)
    when 3
      menu_3(list)
    when 4
      menu_4(list)
    when 5
      menu_5(list)
  end
end


