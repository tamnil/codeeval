
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  arr = line.split("")
arr.each_with_index do |x,i|

  if !!(x =~ /[a-z]/)
    arr[i] = x.upcase
  elsif !!(x =~ /[A-Z]/)
    arr[i] = x.downcase

   end

end

puts arr.join
end
