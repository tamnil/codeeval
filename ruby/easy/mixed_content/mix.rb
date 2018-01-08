
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
teste = entrada()
# processa a linha:
teste.each do |line|
  number = []
  word = []
  orig = line.split(",")
  orig.each do |x|
    if x.match(/\d.*/) then
      number.push(x)
    else
      word.push(x)
    end 

  end
  if word.length == 0 || number.length == 0
    puts line
  else
    puts word.join(",") + "|" + number.join(",")
  end
end
