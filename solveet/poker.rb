puts "escriba numeros"

num = gets.chomp.split('')
num.sort

#sort

def quintilla?(a)
  n = a[0]
  i = 1
  while (i <= a.length - 1) do
    if n != a[i]
      return false
    end
    i = i+1
  end
  return true
end

def poker?(a)
  a1 = a.dup
  a1.pop
  a2 = a.dup
  a2.shift
  if quintilla?(a1) || quintilla?(a2)
    return true
  else
    return false
  end
end

def trio(a)
  a1 = a.dup
  b1 = a.dup
  c1 = a.dup

  a1.delete_at(0)
  a1.delete_at(0)
  b1.delete_at(3)
  b1.delete_at(3)
  c1.pop
  c1.shift
  if quintilla?(a1) || quintilla?(b1) || quintilla?(c1)
    return true
  else
    return false
  end
end

def pares(a)
  i = 1
  while (i <= a.size-2) do
    if ((a[i] == a[i-1]) && (a[i]== a[i+1]))
      a.delete_at(i-1)
      a.delete_at(i-1)
      a.delete_at(i-1)
    end
    i = i+1
  end

  parejas = 0
  i = 0
  while (i < a.size-1) do
    if (a[i] == a[i+1])
      parejas = parejas +1
      i = i+2
    else
      i = i+1
    end
  end
  return parejas
end

if (quintilla?(num))
  puts "hay quintilla"
elsif (poker?(num))
  puts "hay poker"
else
  if (trio(num))
    puts "hay trio"
  end
  if (pares(num) > 0)
      puts "hay #{pares(num)} pares"
  end
end






