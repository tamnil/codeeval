
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
fragments = line.split(" ").map(&:to_f)
puts fragments.sort!.map!{|x| "%.3f" %x}.join(" ")

end
