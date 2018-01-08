
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|

  f0 =0
  f1 = 1
  f = 0
  if line.to_s == "0"
    puts f0
  elsif line.to_s == "1"
    puts f1
  else
    (2..line.to_i).each do |n|
      f = f1 +f0

      f0 = f1
      f1 = f
    end
    puts f
  end
end
