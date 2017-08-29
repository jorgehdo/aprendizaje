# agregar un contacto
# borrar un contacto en base al nombre
# mostrar un numero en base al nombre
# borrar todos los contactosd
# salir de la aplicacion

class Directory
  attr_reader :name, :phone

  def initialize (name, phone)
    @name = name
    @phone = phone
  end

  def to_s
    "#{@name} #{phone}"
  end
end


class ListContacts
  def initialize
    @list = Array.new
  end

  def add_cont(contact)
    @list.push(contact)
  end

  def quitar(eliminar)
    @list.delete_at(eliminar)
  end




  def borrar_por_nombre(name)
    for i in 0...(@list.size)
      if (@list[i].name == name)
        @list.delete_at(i)
        40.times { print "*" }
        puts "\nEl contacto ha sido borrado\n"
        40.times { print "*" }
        return nil
      end
    end
    puts "**** el nombre no esta ****"
  end



  def show_all
    if @list.length == 0
      puts "No  haycontactos en tu libreta"
    else
      index = 0
      @list.each do |elemento|
        puts "#{index}" + " - " "#{elemento.to_s}"
        index = index + 1
      end
    end
  end

  def show_phone(nombre)
    for i in 0...(@list.size)
      if (@list[i].name == nombre)
        mostrar = @list[i].phone
        puts "***** El numero de su contacto es #{mostrar} *****"
      else
        puts "El contacto no esta en su libreta"
      end
    end
  end

  def remove_all
    @list.clear
  end
end










