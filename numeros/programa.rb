class Numero
  attr_reader :signo

  def initialize(valor, signo = 1)
    @valor = valor
    @signo = signo
  end

  def cantidad
    @valor * @signo
  end

  def to_s
    cantidad
  end

  alias inspect to_s
end

numero1 = Numero.new(1)
puts numero1.cantidad

numero2 = Numero.new(4, -1)
puts numero2.cantidad

class Decimal < Numero
  attr_reader :fraccionario

  def initialize(valor, fraccionario, signo = 1)
    @valor = valor
    @signo = signo
    @fraccionario = fraccionario
  end

  def cantidad
    (@valor + @fraccionario) * @signo
  end
end

numero3 = Decimal.new(5, 0.5, -1)
puts numero3.cantidad #=> -5.5
puts numero3.signo #=> -1
puts numero3.fraccionario # => 0.5

class Operacion
  attr_accessor :numero_a, :numero_b

  def initialize(numero_a, numero_b)
    @numero_a = numero_a
    @numero_b = numero_b
  end

  def sumar
    @numero_a.cantidad + @numero_b.cantidad
  end
end


operacion = Operacion.new(numero1, numero2)

puts ""
puts ""
puts ""
puts ""
p operacion.numero_a
p operacion.numero_b
puts operacion.sumar


