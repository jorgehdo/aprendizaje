class Auto

  def initialize(marca, modelo, gama)
    @marca = marca
    @modelo = modelo
    @gama = gama
  end

  def marca
    @marca
  end

  def modelo
    @modelo
  end

  def gama
    @gama
  end
end

auto = Auto.new("Chevrolet", "2011", "sparkGt")
puts auto.marca
puts auto.modelo
puts auto.gama


