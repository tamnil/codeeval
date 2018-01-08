def entrada(*args)
  File.read(ARGV[0]).split("\n")
end


def is_palindrome?(arg)
  txt = arg.to_s.split("")
  txt_rev = txt.reverse
  if txt.join == txt_rev.join
    return true
  end
  return false
end
def reverse_and_sum(arg); arg.to_i  + arg.to_s.split("").reverse.join.to_i end

def check(n,i = 0)
  if is_palindrome?(n)
    return n,i
  else
    check(reverse_and_sum(n),i+1)
  end

end

teste = entrada()
# processa a linha:
teste.each do |linha|
  ret = check(linha)
  puts "#{ret[1]} #{ret[0]}"

end
