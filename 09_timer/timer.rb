class Timer

  def seconds
    @seconds ||= 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    h = seconds / 3600
    m = (seconds % 3600) / 60
    s = seconds % 60

    format("%02d:%02d:%02d", h, m, s)
  end
end