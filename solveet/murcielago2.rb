murcielago = 'murcielago'.split('')

puts 'Digite la frase a convertir: '
cadena = gets.chomp
resultado = ''

cadena.each_char do |caracter|
  resultado = resultado + (murcielago.index(caracter) || caracter).to_s
end

puts "la cadena convertida es: #{resultado}"