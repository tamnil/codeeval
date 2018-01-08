
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
def repetition(arr)
  temp_arr = ""
  repeated = false

  (0..arr.length/2).each do |x|
    mod = arr.length % (x+1)
    div = arr.length / (x+1)
    if mod == 0
      (0..div-1).each do |y|
        a = arr[x * y..x*y+div - 1 ]
        b = arr[x * (y+1)..x*(y+1) + div - 1 ]
        if a == b 
          temp_arr = a
        end
      end 
    end

  end

  # if temp_arr.length == 2 && temp_arr[0] == temp_arr[1]
  #   temp_arr = temp_arr[0]
  # end
p temp_arr
  return temp_arr
end

teste = entrada()
# processa a linha:
teste.each do |line|

  puts repetition(line.split("")).length


end  
