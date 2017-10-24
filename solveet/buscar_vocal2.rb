# el objetivo es mostrar el primer vocal de una palabra

=begin
= end
def buscar_vocal?(letra)
  case letra
  when "a"
    return true
  when "e"
    return true
  when "i"
    return true
  when "o"
    return true
  when "u"
    return true
  end
  false
end
=begin
=end

def es_vocal?(letra)
  if letra == "a"
    return true
  elsif letra == "e"
    return true
  elsif letra == "i"
    return true
  elsif letra == "o"
    return true
  elsif letra == "u"
    return true
  end
  return false
end

puts "Escriba una palabra"
palabra = gets.chomp
encontro_vocal = false

palabra.each_char do |letra|
  if es_vocal?(letra)
    puts "la primera vocal es #{letra}"
    encontro_vocal = true
    break
  end
end

if encontro_vocal == false
  puts "No se encontraron vocales en la cadena."
end










