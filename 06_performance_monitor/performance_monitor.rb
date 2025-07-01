def measure(times = 1)
  total_time = 0.0
  times.times do
    start_time = Time.now
    yield
    total_time += Time.now - start_time
  end
  total_time / times
end


