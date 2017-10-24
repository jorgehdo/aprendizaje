=begin
def hola
  puts "Hola desde nuestra funcion"
  resultado =  2 + 2
  yield resultado # con la palabra yield el se salta hasta el bloque
end

hola do |x| # en X esta lo q estamos pasando en el parametro resultado
  puts "El resultado de nuestra operacion es #{x}"
end


# otras formas de llamar nuestros bloques

def hola(num1, num2)
  puts "Hola desde nuestra funcion"
  resultado =  num1 + num2
  yield resultado # con la palabra yield el se salta hasta el bloque
end

hola(5, 6) do |x| # en X esta lo q estamos pasando en el parametro resultado
  puts "El resultado de nuestra operacion es #{x}"
end
=end

# otras formas de llamar nuestros bloques
# como coroborrar q le mandaron un bloque a la funcion
def suma(num1, num2)
  puts "Hola desde nuestra funcion"
  resultado =  num1 + num2
  if block_given?
    yield resultado # con la palabra yield el se salta hasta el bloque
  else
    puts "El resultado desplegado en el metodo es #{resultado}"
  end
end

suma(5, 6) do |x| # en X esta lo q estamos pasando en el parametro resultado
  puts "El resultado desplegado en el bloque es #{x}"
end


