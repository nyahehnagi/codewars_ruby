round_down = lambda {|time| (time * 0.5).floor}

def litres(fn, time)
   fn.call (time)
  end

puts litres(round_down, 2)