=begin
class Archivo

  def initialize
  end

  def escritura ()
    File.open("prueba.txt", "w") do |f|
      f.puts "Fichero escrito por. mi"
    end
  end

end


p = Archivo.new
p.escritura
gets()

=end
=begin
File.open('prueba.txt', 'r') do |f1|
  cont = 0
  while linea = f1.gets
    cont = cont + linea.to_i
  end
  puts "la suma es #{cont}"
end
=end

class Archivo
  def ejercicio
    pares = File.new("pares.txt","w")
    impares = File.new("impares.txt","w")

    File.open("numeros.txt","r") do |f|
      while linea = f.gets
        if linea.to_i % 2 == 0
          pares.puts(linea)
        else
          impares.puts(linea)
        end
      end
    end

    pares.close
    impares.close
  end
end

p = Archivo.new
p.ejercicio()













