def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  reg = /[a-zA-Z0-9_.]+@\w+((\w*)\.\w{0,3}(\.\w\w){0,2})*/


  if reg.match(linha) != nil
    puts "true"
  else 
    puts "false"

  end






end
