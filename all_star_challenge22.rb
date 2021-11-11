def to_time(seconds)
    hours  = (seconds / 3600).floor
    remaining_seconds = seconds % 3600
    minutes =  (remaining_seconds / 60).floor

    return "#{hours} hour(s) and #{minutes} minute(s)"
end

puts to_time(3600)