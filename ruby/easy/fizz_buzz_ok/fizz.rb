# puts ARGV[0]
teste = File.read(ARGV[0]).split("\n")
# puts teste[1]
# puts 'again'
retorno = []
teste.each do |line|
  vars = line.split(" ")
  div_a = vars[0].to_i
  div_b = vars[1].to_i
  max = vars[2]

  (1..max.to_i).each do |x|
    # reset the response 
    resp = ""
    # verify if is divisible and return the result
    if x % div_a == 0 
      resp += "F"
    end
    if x % div_b == 0
      resp += "B"
    end
    if resp == "" 
      resp = x
    end
    retorno.push(resp)

  end

  retorno.each do |s|

    print s.to_s + " "

  end
  puts 
  retorno = []

end


