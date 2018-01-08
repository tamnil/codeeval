
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  regex_nonwords = /[^A-Za-z]+/
 
  ret_string = line.gsub(regex_nonwords," ").downcase

ret_string.gsub!(/(^ | $)/,"")

puts ret_string

end
