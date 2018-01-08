
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  info =  line.split(" ")
  temp_arr = []
  str = ""
  (0..info.length/2 -1).each do |x|

    temp_arr[x] = [info.shift ,info.shift]

  end
  temp_arr.each do |x|
    # p temp_arr
    if x[0] == "00"

      str += "1" * x[1].length
      # str += "1" *  2
    else
      str += "0" * x[1].length
    end

  end

  puts str.to_i(2)
end
