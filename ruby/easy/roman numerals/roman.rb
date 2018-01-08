
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
def text_convert(val,dec)
  roman = {
    "1" => "I",
    "5" => "V",
    "10" => "X",
    "50" => "L",
    "100" => "C",
    "500" => "D",
    "1000" => "M"
  }
  case val.to_i 
  when (1..3)
    return  roman[(dec).to_s] * val.to_i 
  when (4)
    return roman[dec.to_s].to_s + roman[(5*dec).to_s].to_s
  when (5..8)
    return roman[(5*dec).to_s].to_s + roman[dec.to_s].to_s * (val.to_i - 5)
  when (9)
    return roman[dec.to_s].to_s + roman[(10*dec).to_s].to_s
  end


end

# processa a linha:
teste.each do |line|

  num =  line.to_i
  ret  = [] 
  text = line.to_s.split("").reverse
  count = 1 
  text.each_with_index do |x , i|
    if text_convert(x,(10 ** (count - 1))) != nil
      ret << text_convert(x,(10 ** (count - 1)))
    end
    count += 1
  end


  puts ret.reverse.join
end
