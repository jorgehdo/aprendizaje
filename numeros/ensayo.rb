# define la clase Perro
class Perro

  # método inicializar clase
  def initialize(raza, nombre)
    # atributos
    @raza = raza
    @nombre = nombre
  end

  # método ladrar
  def ladrar
    puts 'Guau! Guau! Guau!'
  end

  # método saludar
  def saludar
    puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"
  end
end

# para hacer nuevos objetos,
# se usa el método new
animal = Perro.new('Labrador', 'Benzy')
puts animal.ladrar
puts animal.saludar

animal2 = Perro.new('Buldog', 'Roco')
puts animal2.ladrar
puts animal2.saludar