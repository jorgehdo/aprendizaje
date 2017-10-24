

a = [ "a", "b", "c" ]
a.each_index {|x| print x, " -- " } # cuando se ejecuta el bloque pasa en index 0 1 2

puts

"hello".each_char {|c| print c, ' ' }