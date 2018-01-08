
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  line_len = line.length.to_f
  upper = line.gsub(/[a-z]/,"").length.to_f
  lower = line.gsub(/[A-Z]/,"").length.to_f

  puts "lowercase: #{format("%.2f",lower/line_len * 100)} uppercase: #{format("%.2f",upper/line_len *100)}"
end
