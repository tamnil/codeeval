
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end




morse =Hash[
  "A" =>  ".-"   ,
  "B" =>  "-..." ,
  "C" =>  "-.-." ,
  "D" =>  "-.."  ,
  "E" =>  "."    ,
  "F" =>  "..-." ,
  "G" =>  "--."  ,
  "H" =>  "...." ,
  "I" =>  ".."   ,
  "J" =>  ".---" ,
  "K" =>  "-.-"  ,
  "L" =>  ".-.." ,
  "M" =>  "--"   ,
  "N" =>  "-."   ,
  "O" =>  "---"  ,
  "P" =>  ".--." ,
  "Q" =>  "--.-" ,
  "R" =>  ".-."  ,
  "S" =>  "..."  ,
  "T" =>  "-"    ,
  "U" =>  "..-"    ,
  "V" =>  "...-"   ,
  "W" =>  ".--"    ,
  "X" =>  "-..-"   ,
  "Y" =>  "-.--"   ,
  "Z" =>  "--.."   ,
  "0" =>  "-----"  ,
  "1" =>  ".----"  ,
  "2" =>  "..---"  ,
  "3" =>  "...--"  ,
  "4" =>  "....-"  ,
  "5" =>  "....."  ,
  "6" =>  "-...."  ,
  "7" =>  "--..."  ,
  "8" =>  "---.."  ,
  "9" =>  "----."  ]
# ,
#   Period      .-.-.-
#   Comma       --..--
#   ? Mark      ..--..
#   Hyphen      -....-
#   Apostrophe  .----.
#   Colon       ---...
#   Quotation   .-..-.
#   Slash       -..-.
#   @ sign      .--.-.

teste = entrada()
# processa a linha:
teste.each do |line|
  output = ""
text = line.split("  ").map!{ |x| x = x.split(" ") }
text.map! do |x|

x.map!{ |y| y = morse.key(y)}


end

text.each do |x|

output << x.join + " "
end


puts output
# print morse.key(".-")

# text.map{ |x|  }


end

