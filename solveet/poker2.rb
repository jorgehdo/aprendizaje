puts "escriba un numero"

a = gets.chomp.split('').sort


quintilla = 0
poker = 0
pares = 0
trios = 0

i = 0
iguales = 1

while (i < a.size-1)
  if (a[i] == a[i+1])
    iguales = iguales +1
  else
    case iguales
    when 2
      pares = pares +1
    when 3
      trios = trios +1
    when 4
      poker = poker +1
    end
    iguales = 1
  end
  i = i+1
end

if (iguales == 5)
  quintilla = quintilla +1
elsif (iguales == 2)
  pares = pares +1
end

if quintilla > 0
  puts "hay quintilla"
elsif poker > 0
  puts "hay poker"
else
  if (trios >0)
    puts "hay trio"
  end
  if (pares > 0)
    puts "hay #{pares} pares"
  end
end