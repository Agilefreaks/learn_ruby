def measure(n = 1)
  time1 = Time.now

  n.times { yield }

  time2 = Time.now
  (time2 - time1).to_f / n
end
