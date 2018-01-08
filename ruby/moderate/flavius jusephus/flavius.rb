def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
def roullete(list,steps,death_list = [])
  if list.length > 0
    (1..steps-1).each do
      list.rotate!
    end

    death_list << list.delete_at(0)
    return roullete(list,steps,death_list)
  else
    return death_list
  end


end

teste = entrada()
# processa a linha:
teste.each do |linha|
  x = linha.split(",")
  n = x[0].to_i - 1
  list = (0..n).to_a.map(&:to_s)

  puts roullete(list,x[1].to_i).join(" ")


end

