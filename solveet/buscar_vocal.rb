# el objetivo es mostrar el primer vocal de una palabra

puts "escriba palabra"
palabra = gets.chomp

vocales = [ "a", "e", "i", "o", "u" ]

palabra.each_char do |letra|
  if vocales.include? letra
    puts "la primera vocal es #{letra}"
    break
  end
end