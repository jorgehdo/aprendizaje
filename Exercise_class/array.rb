=begin

num = [1,2,3]
mayor = 0
indice = 0
i = 0
while(i < num.size)
  if num[i] > mayor
    mayor = num[i]
    indice = i
  end
  i = i + 1
end

puts "el numero mayor es #{mayor}."
puts "el indice es #{indice}."
=end

a = [1,2,3,10,500,2,67,3,4,67]

mayor = a[0]
indice = 0

for x in 0...a.size
  if a[x] > mayor
    mayor = a[x]
    indice = x
  end
end

puts "el mayor es #{mayor}"
puts "el indice es #{indice}"
