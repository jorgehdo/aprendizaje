class Perro

  attr_accessor :raza, :color, :edad

  def initialize(raza, color, edad)
   @raza = raza
   @color = color
   @edad = edad
  end

  def ladrar
    puts "Guau, Guau, Guau"
  end

  def to_s
    "Soy de raza #{@raza} y de color #{@color} y tengo #{edad} años"
  end
end

pincher = Perro.new("Pincher", "negro", "4 años")
bulldog = Perro.new("Buldoog", "cafe", "4 años")
pitbul = Perro.new("Pitbul", "cafe", "4 años")

lista_de_perros = [pincher, bulldog, pitbul]

class ListaPerros
  def initialize()
    @lista = []
  end

  def agregar(perro)
    if perro.class == Perro
      @lista << perro
    else
      puts "no es un perro"
    end
  end

  def borrar(perro)
    @lista.delete_if do |elemento|
      (elemento.class != Perro || elemento.raza == perro.raza)
    end
  end
end






