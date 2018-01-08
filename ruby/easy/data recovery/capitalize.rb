
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|

  frase = line.split(";")[0].split(" ")

  coord = line.split(";")[1].split(" ")

  temp_arr = []
  del_arr = frase.clone
  coord.each_with_index do |x,i|
    # p x
    temp_arr[x.to_i - 1] = frase[i]
    frase[i] = nil
    del_arr[i] = nil
  end
  #  temp_arr.replace
  if  temp_arr.rindex(nil) != nil
    temp_arr[temp_arr.rindex(nil)] = del_arr.join("")
  else
    temp_arr << del_arr.join("")
  end


  puts temp_arr.join(" ")
end
