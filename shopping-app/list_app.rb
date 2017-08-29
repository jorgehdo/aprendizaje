require "./list.rb"
require "./item.rb"

class ListApp
  attr_writer :list

  def initialize
    @list = List.new
  end

  def run
    puts "Bienvenido a nuestra Lista de Compras"
    loop do
      puts
      puts "a - Agregar un articulo"
      puts "r - Remover un articulo"
      puts "v - Mostrar todos los articulos"
      puts "m - Marcar un articulo"
      puts "b - Borrar todos los articulos"
      puts "s - Salir de la aplicacion"
      input = gets.chomp

      case input
      when "a"
        puts "Escriba el articulo"
        item = gets.chomp
        @list.add_item(item)
        40.times { print "*" }
        puts "\nEl articulo ha sido agregado a tu lista\n"
        40.times { print "*" }
      when "r"
        puts "Marque el numero del articulo a remover"
        @list.show_all
        index = gets.chomp
        # el item = @list.remove_item(index.to_i) no muestra el articulo
        # que removimos
        item = @list.remove_item(index.to_i)
        # se agreta times con asterisco para que se duplique cuando
        # sea removido
        40.times { print "*" }
        puts "\n#{item.text} ha sido removido\n"
        40.times { print "*" }
      when "v"
        @list.show_all
      when "m"
        @list.show_all
        index = gets.chomp
        @list.check_item(index.to_i)
        40.times { print "*" }
        puts "\nEl articulo ha sido marcado\n"
        40.times { print "*" }
      when "b"
        puts "Deseas removeer todos los articulos s/n"
        input = gets.chomp
        if input == "s"
          @list.remove_all
          40.times { print "*" }
          puts "\nLos articulos han sido removidos de tu lista\n"
          40.times { print "*" }
        else
          puts "Operacion cancelada"
        end
      when "s"
        break #el break me saca de todo
      else
        # cuando se escribe una letra que no esta en el menu
        # aparece el siguiente puts
        puts "Operacion no reconocida"
      end
    end
    puts "Gracias por utilizar nuestra aplicacion"
  end
end

list_app = ListApp.new
list_app.run

