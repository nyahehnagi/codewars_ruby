def reverse_words(str)
    # Go for it
    last_index = str.length - 1
    word = ""
    new_string = ""
    str.each_char do |char|

        if is_space(char) == false
            word += char.to_s
            puts "Found letter.. new word is : #{word}"
        else
            new_string += word.reverse + char
            puts new_string
            word = ""            
        end
    end

    new_string += word.reverse

    return new_string
  end

  def is_space(character)
    character == " " ? true : false
  end


  puts reverse_words("double  spaced  words")
=begin
  Test.assert_equals(reverse_words('The quick brown fox jumps over the lazy dog.'), 'ehT kciuq nworb xof spmuj revo eht yzal .god')
  Test.assert_equals(reverse_words('apple'), 'elppa')
  Test.assert_equals(reverse_words('a b c d'), 'a b c d')
  Test.assert_equals(reverse_words('double  spaced  words'), 'elbuod  decaps  sdrow')
=end
