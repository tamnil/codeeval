
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  jump = line.split(" | ")[1].to_i
  players = line.split(" | ")[0].split(" ")

  while players.length > 1
    i =   (jump - 1) % players.length
    players.delete_at(i)

  end
  puts players
end
