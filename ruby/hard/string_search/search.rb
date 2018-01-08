
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end



teste = entrada()
# processa a linha:
teste.each do |line|
  word = line.split(",")[1]
  string = line.split(",")[0]
  wlen = word.split("").length
  puts wlen
  puts word
  puts string

  string.split("").each_with_index do |s,is|
    tmp = ""
    if s == word[0]
      #matched the first char:

      # get the chunk of same length
      chunk = string[is..(wlen - 1 + is)]
      if chunk == word
        puts "match"

      end




    end
  end
end
