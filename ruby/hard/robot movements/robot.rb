def robot(lin,col)
  if lin == 3  && col ==3 
    return 1
  elsif  [lin,col].max > 3 || [lin,col].min < 0
    return 0
  elsif $matrix[lin][col] == 0
    return 0
  else
    $matrix[lin][col] = 0
    counter = robot(lin+1,col) + robot(lin - 1,col) + robot(lin,col + 1) + robot(lin,col - 1)
    $matrix[lin][col] = 1
    return counter
  end

end

$matrix = Array.new(4){Array.new(4,true)}  # matrix init
puts robot(0,0) # initial position

# p $matrix
