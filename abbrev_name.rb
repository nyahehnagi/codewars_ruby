def abbrev_name(name)
    ret_str = ""
    words = name.split(' ')
    words.each {|word|
        word.capitalize!()
        ret_str += word[0]
        }

    return ret_str.insert(1, '.')
  end

  puts abbrev_name ("bromley jones")