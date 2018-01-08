
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
abc = ("a".."j").to_a 
num = ("0".."9").to_a
perm = abc | num
# processa a linha:
teste.each do |line|
  ret = []
  # strip invalid chars:
  line.split("").each do |x|
    if perm.include? x
      ret << [x]
    end

  end
  #convert to numbers
  composed = ret.join
  abc.each_with_index do |x,i|
    composed.gsub!(x,i.to_s)
  end
  puts (composed == "" ? "NONE" : composed)
end

