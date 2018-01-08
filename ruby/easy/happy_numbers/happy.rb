
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def sumOfPow(n)
  ret = 0
  n.to_s.each_char do |c|
    ret += (c.to_i)**2
  end
  return ret 
end
teste = entrada()
# processa a linha:
teste.each do |line|
  i = line
  count = 0
  testArr = []   # array to verify if the number is recurrent
  continue = true

  while  continue == true && (i != 1)  do 
    count +=1
    if testArr.include?(i) == true then
      continue = false
      i = 0
      break
    end
    testArr |= [i]
   i = sumOfPow(i)
  
  end
  puts i

end
