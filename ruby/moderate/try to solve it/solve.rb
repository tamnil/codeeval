def entrada(*args)
  File.read(ARGV[0]).split("\n")
end


key = Hash[

"a"=>"u" ,
"b"=>"v" ,
"c"=>"w" ,
"d"=>"x" ,
"e"=>"y" ,
"f"=>"z" ,
"g"=>"n" ,
"h"=>"o" ,
"i"=>"p" ,
"j"=>"q" ,
"k"=>"r" ,
"l"=>"s" ,
"m"=>"t" ,
"n"=>"g" ,
"o"=>"h" ,
"p"=>"i" ,
"q"=>"j" ,
"r"=>"k" ,
"s"=>"l" ,
"t"=>"m" ,
"u"=>"a" ,
"v"=>"b" ,
"w"=>"c" ,
"x"=>"d" ,
"y"=>"e" ,
"z"=>"f" 


]

teste = entrada()
# processa a linha:
teste.each do |linha|
text = linha.split("")

text.map! do |x| 
key.key(x)

end


 puts text.join

end
