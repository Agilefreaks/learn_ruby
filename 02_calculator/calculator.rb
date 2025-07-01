def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(a)
  rez = 0
  a.each { |i| rez += i}
  rez
end


def mult(a)
  rez = 1
  a.each { |i| rez *= i }
  rez
end

def pow(a,b)
  a ** b
end

def fact(a)
  rez = 1
  for i in 1..a do
    rez *= i
  end
  rez
end