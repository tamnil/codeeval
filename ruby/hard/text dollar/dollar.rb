def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

retorno = ""
teste = entrada()

def following(str)

  sorted_str = str.sort.reverse
  # p sorted_str
  if sorted_str.join("") == str.join("")
    arr =[]
    sorted_str.each do |x|
      if x != "0" 
        arr << x 
      end
    end
    p arr
    ret_arr = [arr[-1] ] + sorted_str[arr.length] + ["0"] + arr[arr.length - 1]
    p ret_arr,"asd"
    return ret_arr.join
  else
    perm = str.sort.permutation
    perm.each do |x|
      # p x.join.to_i
      # p str.join.to_i
      if x.join.to_i > str.join.to_i
        return x.join
      end
    end
  end

end


# processa a linha:

teste.each do |line|


  puts following(line.split(""))
end
