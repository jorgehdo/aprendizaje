class Perro

  attr_accessor :raza, :color, :edad

 def initialize(raza, color, edad)
   @raza = raza
   @color = color
   @edad = edad
 end

  def ladrar(ladrido)
    puts "#{ladrido}, #{ladrido}, #{ladrido}"
  end

  def descripcion
    puts "Soy de raza #{@raza} y de color #{@color} y tengo #{edad} años"
  end
end







