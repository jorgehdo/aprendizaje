# la palabra "Murcielago" reemplazamos cada letra con un número del 0 al 9 así:
#M U R C I E L A G O
#0 1 2 3 4 5 6 7 8 9
#Tomando la conversión el programa debe traducir las palabras reemplazando las letras por números. Ejm:
#miguel esta durmiendo = 048156 5st7 d12045nd9
#Como añadido, el programa debe poder hacer lo inverso:
#048156 5st7 d12045nd9 = miguel esta durmiendo

def reemplazar
  hash_murcielago = {
    'm' => 0,
    'u' => 1,
    'r' => 2,
    'c' => 3,
    'i' => 4,
    'e' => 5,
    'l' => 6,
    'a' => 7,
    'g' => 8,
    'o' => 9
  }

  puts 'Digite la frase a convertir: '
  cadena = gets.chomp
  resultado = ''

  cadena.each_char do |caracter|
    if hash_murcielago[caracter] != nil
      resultado = resultado + hash_murcielago[caracter].to_s
    else
      resultado = resultado + caracter
    end
  end
  puts "la cadena convertida es: #{resultado}"
end

def reemplazar_1
  hash_murcielago = {
    '0' => "m",
    '1' => "u",
    '2' => "r",
    '3' => "c",
    '4' => "i",
    '5' => "e",
    '6' => "l",
    '7' => "a",
    '8' => "g",
    '9' => "o"
  }

  puts 'Digite la frase a convertir: '
  cadena = gets.chomp
  resultado = ''

  cadena.each_char do |caracter|
    if hash_murcielago[caracter] != nil
      resultado = resultado + hash_murcielago[caracter].to_s
    else
      resultado = resultado + caracter
    end
  end
  puts "la cadena convertida es: #{resultado}"
end

puts reemplazar_1



