def mount_matrix(arr_a,arr_b)
  #mount a matrix based on x and y arrays
  cache = Array.new(arr_a.length + 1) {Array.new( arr_b.length + 1 , 0) }
  count = 0
  (1..arr_a.length).each do |x|
    (1..arr_b.length).each do |y|
      if arr_a[x - 1] == arr_b[ y - 1 ]
        cache[x][y] = cache[x - 1][y - 1] + 1
      else
        cache[x][y] = [cache[x][y - 1] , cache[x - 1][y]].max
      end 
    end

  end

  return cache
end

def track(matrix,arr_a,arr_b,i,j)
  #track the elements, recursively
  # print arr_a[i-1] , arr_b[j-1],matrix[i][j-1],matrix[i-1][j], "\n"
  if i == 0  || j == 0
    return ""
  elsif arr_a[i-1] == arr_b[j-1]
    return track(matrix,arr_a,arr_b,i - 1,j - 1).to_s  + arr_a[i-1].to_s
  else
    if matrix[i][j - 1] > matrix[i - 1][j]
      return track(matrix,arr_a,arr_b, i, j - 1)
    else
      return track(matrix,arr_a,arr_b, i - 1, j)
    end
  end
end


def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

retorno = ""
teste = entrada()

# processa a linha:

teste.each do |line|
  string_a = line.split(";")[0].split("")
  string_b = line.split(";")[1].split("")
  matrix = mount_matrix(string_b,string_a)
  puts track(matrix,string_b,string_a,string_b.length ,string_a.length )
  # print track(matrix,string_a,string_b,7,7)
  # print track(matrix,string_b,string_a,3,3)
  # matrix.each do |x|
  #   print  x
  #   puts
  # end
end
