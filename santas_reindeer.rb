def sort_reindeer reindeer_names
    names = Hash.new()
    reindeer_names.map { |name| 
        words = name.split(' ')
        names[words[0]] = words[1]
    }

    return names.sort_by{|key,value| value}.map{ |key, value| key + " " + value}

  end

  sort_reindeer([
    "Dasher Tonoyan",
    "Dancer Moore", 
    "Prancer Chua", 
    "Vixen Chua", 
    "Comet Karavani", 
    "Cupid Foroutan", 
    "Donder Jonker", 
    "Blitzen Claus"] 
    )