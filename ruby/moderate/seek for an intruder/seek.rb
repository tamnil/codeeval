def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def check_ip(n)
end

def filter_ip(input)



end


 /[01]{29,32}/,  # get all binary strings
 /(([01]{8}\.){3}[01]{8})/,     #get binary dotted
 /((\d{1,3}\.){3}\d{1,3})/,  # get all 3.3.3.3
 /((0x[0-9a-f]{2}\.){3}0x[0-9a-f]{2})/,  # get all hex dotted
 /((0[0-8]{3}){4})/,  # octal  without dot




teste = entrada()
# processa a linha:
teste.each do |linha|
  # puts check(linha)

end
