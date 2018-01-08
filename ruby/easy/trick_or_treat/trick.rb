
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  candies = 0
  arr = Hash[line.split(", ").map {|el| el.split(": ",2)}]
  arr.map { |k,v| arr[k] = v.to_f}

 candies =(arr["Vampires"] * 3  +  arr["Zombies"] * 4   +   arr["Witches"] * 5) * arr["Houses"]
 childs =  arr["Vampires"]   +  arr["Zombies"]    +   arr["Witches"] 
 puts (candies/childs).floor()





end
