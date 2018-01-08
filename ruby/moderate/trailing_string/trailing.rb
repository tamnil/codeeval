def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:

teste.reject!(&:empty?)
teste.each do |line|
  arr = line.split(",")
  compareWord = arr[1]
  word = arr[0]
  regex = Regexp.new  compareWord + "$"
  if regex.match(word) != nil
    puts "1"
  else
    puts "0"
  end


end

