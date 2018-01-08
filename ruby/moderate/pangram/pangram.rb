def entrada(*args)
  File.read(ARGV[0]).split("\n")
end




teste = entrada()
# processa a linha:
teste.each do |linha|
  text = linha.downcase.gsub(" ","").split("").uniq
  abc = ("a".."z").to_a

  res =  abc - text
  if res == [] 
    res = ["NULL"]
  end

  puts res.join




end
