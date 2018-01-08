
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  line.gsub!(" ","")
  line.gsub!(")(",";")

  line.gsub!("(","")  
  line.gsub!(")","")  
  # puts line
  arr = line.split(";")
  #tranform in coord arrays: 
  coord1 =  arr[0].split(",")
  coord2 = arr[1].split(",")
  deltax = coord1[0].to_i - coord2[0].to_i
  deltay = coord1[1].to_i - coord2[1].to_i
  distance = Math.sqrt(deltax ** 2 + deltay ** 2)
  puts distance.to_i 

end
