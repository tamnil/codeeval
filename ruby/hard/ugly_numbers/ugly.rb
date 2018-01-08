# puts ARGV[0]
teste = File.read(ARGV[0]).split("\n")
# puts teste[1]
# puts 'again'
# retorno = []

# get the parameters S and a substitution array FR

teste.each do |line|
  param = line.split(";")
  s = param[0]

  #replace with temporary key: a:0, b:1 for unique replacement


  fr = param[1].split(",").each_slice(2) do |pairs|
    # p pairs

    pairs[1].gsub! "0" , "a"
    pairs[1].gsub! "1" , "b"
    # p pairs
    s.gsub! pairs[0] , pairs[1]
    # p s
  end

  #change back to 1 and 0:
  s.gsub! "a", "0"
  s.gsub! "b", "1"

  puts s




end
