def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def test_right(x,y,n)

  if x < n - 1
    if $arr[x+1][y] + $temp_arr[x][y] < $temp_arr[x+1][y]
      $temp_arr[x+1][y] = $arr[x+1][y] +$temp_arr[x][y]
    end
  end


end
def test_left(x,y,n)

  if x > 0
    if $arr[x-1][y] + $temp_arr[x][y] < $temp_arr[x-1][y]
      $temp_arr[x-1][y] = $arr[x-1][y] + $temp_arr[x][y]
    end
  end


end

def test_down(x,y,n)

  if y < n-1
    if $arr[x][y+1] + $temp_arr[x][y] < $temp_arr[x][y+1]
      $temp_arr[x][y+1] = $arr[x][y+1] +$temp_arr[x][y]
    end
  end
  # p $temp_arr[x][y+1]

end
teste = entrada()
# processa a linha:
while teste.length > 0
  n = teste.shift.to_i
  $arr = []
  $temp_arr= Array.new(n){Array.new(n,Float::INFINITY)}
  (1..n).each do |x|
    $arr << teste.shift.split(",").map(&:to_i)

  end
  $temp_arr[0][0] = $arr[0][0]
  (0..n-1).each do |x|
    (0..n-1).each do |y|
      elem = $arr[x][y]
      test_left(x,y,n)
      test_down(x,y,n)
      test_right(x,y,n)


    end
  end
  p $temp_arr[n-1][n-1]
end
