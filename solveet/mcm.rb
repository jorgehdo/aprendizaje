# hallar el minimo comun multlipo

def maximo_num(a, b, c)
  if (a > b) && (a > c)
    return a
  elsif (b > c)
    return b
  elsif (c > b)
    return c
  else
    puts "Son iguales"
  end
end

puts "digite tres numeros"

a = gets.to_i
b = gets.to_i
c = gets.to_i

mayor = maximo_num(a, b, c)

i = mayor
while i % a !=0 || i % b !=0 || i % c !=0
  i = i+1
end

puts "el minimo comun multiplo de #{a}, #{b}, #{c} es: #{i}"
