def points(games)
    point_count = 0
    games.each { |item|
      puts item
      x = item[0]
      y = item[2]
      
      puts x
      puts y

      if x > y 
        point_count += 3
      elsif x == y
        point_count += 1  
      end
    }
    return point_count
  end

  puts points (['1:0','2:0','3:0','4:0','2:1','3:1','4:1','3:2','4:2','4:3'])



  