def find_repeated(str,n)
#assume in ascii hierachi, spaces and other points are minimum
# othrwise another form is detect spaces or other chars
  (0..(str.length - n - 1)).each do |x|
    chunk =  str[x,n].join 
    (x + 1..str.length - n -1).each do |y|
      analize = str[y,n].join 
      if analize == chunk && str[x-1] == str[y-1] && str[x-1] == str[y+n] 
        return str[y,n]
      end
    end
  end


end
def msg_shift(msg,shift)

msg.map! do |x|
x.to_i - shift
end

end
 def msg_to_char(msg)
msg.map! do |x|
 x.chr

end


 end

def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

retorno = ""
teste = entrada()

# processa a linha:

teste.each do |line|
  cache = line.split(" | ")
  s_len = cache[0].to_i
  s_end = cache[1]
  msg_enc = cache[2].split(" ")
repeated = find_repeated(msg_enc,s_len)
shift = repeated.last.to_i - s_end.ord.to_i
shifted_message = msg_shift(msg_enc,shift)
final_message = msg_to_char(shifted_message).join
puts final_message


puts line

  # end
end
