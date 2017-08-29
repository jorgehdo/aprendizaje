require './directorio.rb'

def menu_1(list)
  puts "Escriba nombre y apellido del contacto"
  nombre = gets.chomp
  puts "Escriba numero Telefonico"
  telefono = gets.to_i
  contacto = Directory.new(nombre, telefono)
  list.add_cont(contacto)


list = ListContacts.new

input = 0
while (input != 6)
  puts "1 Agregar un contacto"
  puts "2 Borrar un contacto en base al nombre"
  puts "3 Mostrar un numero en base al nombre"
  puts "4 Borrar todos los contactos"
  puts "5 Salir de la aplicacion"

  input = gets.to_i
  case input
    when 1
    menu_1(list)
    when 2
  end
end


