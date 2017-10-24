#Crear una lista de combinaciones de un número de listas indefinidas
lista_1 = %w[ negro blanco verde cafe gris ]
lista_2 = %w[ grande mediano chico ]

lista_1.each do |color|
  lista_2.each do |tamaño|
    puts "#{color} #{tamaño}"
  end
end