
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  line.gsub!(" ","")
  check = 0

  (0..15).each_with_index { |x,i|
    if i % 2 ==0
      check += line[x].to_i * 2
    else 
      check += line[x].to_i
    end


  }
if check % 10 == 0
  puts "Real"
else
  puts "Fake"
end


end
