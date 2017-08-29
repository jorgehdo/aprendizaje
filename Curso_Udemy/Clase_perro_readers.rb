class Perro

  attr_accessor :raza, :color, :edad

 def initialize(raza, color, edad)
   @raza = raza
   @color = color
   @edad = edad
 end
end

perro = Perro.new("Pastor Aleman", "cafe", "5 años")

puts perro.raza
puts perro.color
puts perro.edad





