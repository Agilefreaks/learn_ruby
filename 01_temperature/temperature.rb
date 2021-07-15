def ftoc(val)
  5.0 * (val - 32) / 9.0
end

def ctof(val)
  if val == 0
    32
  else
    9.0 * val / 5.0 + 32
  end
end
