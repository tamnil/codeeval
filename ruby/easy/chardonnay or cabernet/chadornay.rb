
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|

  pre = line.split(" | ")

  wine = pre[0].downcase.split("")
  wineRet = pre[0]
  chars = pre[1].downcase.split("")
  inlist = true
  chars.each do |x|

    if ! wine.include? x
      inlist = false

    else
      wine.delete_at(wine.index(x))

    end
  end
  if inlist
    puts wineRet
  else
    puts "False"

  end
end
