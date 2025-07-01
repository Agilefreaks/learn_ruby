def reverser
  yield.split(' ').map(&:reverse).join(' ')
end

def adder(x = 1)
  number = yield
  number + x
end

def repeater(times = 1)
  times.times { yield }
end
