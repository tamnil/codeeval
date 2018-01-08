def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
limit = teste.shift
teste.sort! {|x,y| y.length <=> x.length}
limit.to_i.times do |x|
  puts teste[x]

end
