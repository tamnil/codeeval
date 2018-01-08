

def sobrepoe(*args)

end


def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

retorno = ""
teste = entrada()

# processa a linha:

teste.each do |line|
fragments = line.split(";")
p fragments 

#

fragments.each_with_index { |x,i|
  endtext=false
  p x,fragments[i+1]
  sobrepoe('asd')


}


end
