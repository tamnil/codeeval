def entrada(*args);  File.read(ARGV[0]).split("\n") end
code = {
"0" => ["0"],
"1" => ["1"],
"2" =>   "abc".split(""),
"3" =>  "def".split(""),
"4" => "ghi".split(""),
"5" =>  "jkl".split(""),
"6" =>  "mno".split(""),
"7" =>  "pqrs".split(""),
"8" =>  "tuv".split(""),
"9" =>  "wxyz".split(""),
}
def recurse(str,key = nil)
  if key == nil 
    return str
  else
    code[key].each do |x|
      
      
    end
end
retorno = ""
teste = entrada()
# processa a linha:
teste.each do |line|
ret_arr = []
telephone = line.split("").map(&:to_s)
size = telephone.length

telephone.each do |num|
code[num].each do |cod|
  
  p cod
end
end
end
