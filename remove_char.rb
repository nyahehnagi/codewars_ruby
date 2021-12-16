def remove_char(s)
    s.delete_prefix(s[0]).delete_suffix!(s[-1,1])
  end


def remove_char1(s)
    s.delete_prefix(s[0]).chop
  end


puts remove_char "bromley"

puts remove_char1 "bromley"