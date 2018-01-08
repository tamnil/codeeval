
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
matrix = Array.new(256){Array.new(256,0)}
teste.each do |line|
  query = line.split(" ")[0]
  position = line.split(" ")[1].to_i
  value = line.split(" ")[2].to_i
  case query
  when 'SetCol'
    matrix.each do |x|
      x[position] = value 
    end
  when 'SetRow'
    matrix[position].map!{|x| value}
  when 'QueryRow'
    puts matrix[position].inject(0,:+)
  when 'QueryCol'
    sum = 0
    matrix.each do |x|
      sum += x[position]
    end
    puts sum
  end
end
