

def double_char(str)
    val = ""
    # Your code here
    str.each_char do |c| 
        val += + c + c
    end
    val
  end
  
puts double_char ("hello")