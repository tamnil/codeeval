message = "012222 1114142503 0313012513 03141418192102 0113 2419182119021713 06131715070119"
keyed_alphabet = "BHISOECRTMGWYVALUZDNFJKPQX".split("")
abc = ("A".."Z").to_a




arr_msg = message.split(" ")

arr_msg.map! do |x|
  cache = []
  (0..(x.length-1)/2).each do |y|
    cache << x[2*y,2]
  end
  cache
end
# print arr_msg

roll = 0 
arr_msg.map! do |string|
  string.map! do |char|
    char =  abc[keyed_alphabet.index(abc[char.to_i + roll])]

  end
   string.join
end
puts arr_msg.join(" ")


# puts keyed_alphabet.length

