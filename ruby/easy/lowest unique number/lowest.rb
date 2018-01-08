
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  text = line.split(" ")
  base  =  text.uniq.sort
  unique = []
  base.each do |x|
    if text.count(x) == 1 
      unique << x
    end
  end

  if unique[0] != nil
    # puts text
    position = text.index( unique[0] )  +1
  else
    position = 0
  end

  p position
end
