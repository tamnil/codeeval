def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

#calculate distance off array[x,y]
def distance(p1,p2)
delta_x = p1[0] - p2[0]
delta_y = p1[1] - p2[1]

Math.sqrt(delta_x ** 2 + delta_y **2)

end





teste = entrada()
# processa a linha:
teste.each do |linha|
linha = linha.downcase
striped = linha.gsub(/[a-z:() ]/,"")
# puts striped

center = striped.split(";")[0].split(",")
center.map!(&:to_f)
radius = striped.split(";")[1].to_f
point = striped.split(";")[2].split(",")
point.map!(&:to_f)

puts distance(center, point) <= radius ? "true" : "false" 



end
