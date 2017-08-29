class Empleado
  attr_reader :nombre, :apellido

  def initialize(nombre, apellido)
    @nombre = nombre
    @apellido = apellido
  end

  def to_s
    "#{@nombre} #{@apellido}"
  end
end


# empleado1 = Empleado.new("manuel", "gomez")
# empleado2 = Empleado.new("juan", "perez")
# empleado3 = Empleado.new("edgar", "vazques")
# empleado3.nombre # => edgar


class ListaEmpleados

  def initialize
    @lista = Array.new
  end

  def agregar(empleado)
    @lista.push(empleado)
  end

  def cuantos_hay
    @lista.size
  end

  def quitar(indice)
    @lista.delete_at(indice)
  end


  def buscar_nombre(nombre)
    for i in 0...(@lista.size)
      if (@lista[i].nombre == nombre)
        puts " ***** el nombre #{nombre} si esta en la posicion #{i} ***** "
      else
        puts "**** el nombre no esta ****"
      end
    end
  end

  def buscar_apellido(apellido)
    for i in 0...(@lista.size)
      if (@lista[i].apellido == apellido)
        puts " ***** el apellido #{apellido} si esta en la posicion #{i} ***** "
      else
        puts " **** el apellido no esta **** "
      end
    end
  end

  #def buscar(nombre)
    #@lista.each do |elemento|
      #if (elemento.nombre == nombre)
        #puts " ***** el nombre #{nombre} si esta ***** "
      #end
    #end
    #puts "Ese nombre no se encuentra"
  #end

  def mostrar_empleados
    if @lista.length == 0
      puts "no hay empleados en tu lista"
    else
      index = 0
      @lista.each do |elemento|
        puts "#{index}" + " - " "#{elemento.to_s}"
        index = index + 1
      end
    end
  end
end

# lista = ListaEmpleados.new
# lista.agregar(empleado1)
# lista.agregar(empleado2)
# lista.agregar(empleado3)

# puts lista.cuantos_hay
# p lista.quitar(2)


