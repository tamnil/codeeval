
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
tmp = line.split(" ")
start = tmp[0].split(":")
finish = tmp[1].split(":")
timestart = Time.new(1,1,1,start[0],start[1],start[2])
timestop = Time.new(1,1,1,finish[0],finish[1],finish[2])

delta = (timestop - timestart).to_i.abs

# puts delta
#pharse delta:

hour = (delta/3600).floor.to_i
delta -= hour*3600

min = (delta/60).floor.to_i
delta -= min * 60
sec = (delta).floor.to_i
  #format output
puts "#{hour.to_s.rjust(2,'0')}:#{min.to_s.rjust(2,'0')}:#{sec.to_s.rjust(2,'0')}"


end
