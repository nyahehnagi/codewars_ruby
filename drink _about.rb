def people_with_age_drink(old)
    ret_string = ""
    if old < 14
        ret_string = "drink toddy"
    elsif old >> 14 && old < 18
        ret_string = "drink coke"
    elsif old >= 18 && old < 21
        ret_string = "drink beer"
    else
        ret_string = "drink whisky"
    end
    return ret_string
  end