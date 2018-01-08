
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
x =  {}

x["zero"] = "0"
x["one"] = "1"
x["two"] = "2"
x["three"] = "3" 
x["four"] = "4"
x["five"] = "5"
x["six"] = "6"
x["seven"] = "7" 
x["eight"] = "8"
x["nine"] = "9"

# processa a linha:
teste.each do |line|
res = line.split(";").map{ |n| n = x[n] } 

  puts res.join("")

end
