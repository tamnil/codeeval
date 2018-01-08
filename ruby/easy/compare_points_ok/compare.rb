# puts ARGV[0]
teste = File.read(ARGV[0]).split("\n")
retorno = ""
teste.each do |line|
  vars = line.split(" ")
  coord_o = vars[0].to_i
  coord_p = vars[1].to_i

  coord_q = vars[2].to_i
  coord_r = vars[3].to_i

  # calcula delta XY

  delta_x = coord_q - coord_o
  delta_y = coord_r - coord_p

  # check deltas:
  # puts delta_x
  # puts delta_y
  if delta_y > 0
    retorno +="N"
  elsif delta_y < 0 
    retorno +="S"
  end

  if delta_x> 0
    retorno +="E"
  elsif delta_x < 0 
    retorno +="W"
  end



  # output:
  if retorno == "" 
    puts "here"
  else
    puts retorno
  end


  # reset do retorno
  retorno = "" 

end


