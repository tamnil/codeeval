

def sobrepoe(*args)

end


def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

retorno = ""
teste = entrada()

# processa a linha:

teste.each do |line|

  n = line.split(",")[0].to_i
  el = line.split(",")[1].split("")
  permarr = el.repeated_permutation(n).to_a.uniq.sort
  permarr.each_with_index do |x,i|
    if permarr[i].length > 1
      permarr[i] = permarr[i].join("")
    end
  end


   puts permarr.join(",")
end
