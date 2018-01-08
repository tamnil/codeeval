def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  tmp = linha.split(", ")
  tmp.map!{ |x| x.gsub("(","").gsub(")","").split(",")}
  sorted = tmp.sort
  all_x = []
  all_y = []
  sorted.each do |x|
    # print x
    all_x << x[0]
    all_y << x[1]

  end

  if all_x.uniq.length == 2 && all_y.uniq.length == 2
    puts "true"
  else 
    puts "false"
  end


end
