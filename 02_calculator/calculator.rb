def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(numbers)
  total = 0
  numbers.each do |num|
    total += num
  end
  total
end

def multiply(x,y)
  x*y
end

def multiplyMutiple(numbers)
  total = 1
  numbers.each do |num|
    total *= num
  end

  total
end

def power(x, y)
  return 1 if y == 0

  count = 1
  total = x
  while count < y
    total *= x
    count += 1
  end

  total
end

def fact(x)
  total =1
  count = 1
  while count <= x
    total *= count
    count+= 1
  end
  total

end
