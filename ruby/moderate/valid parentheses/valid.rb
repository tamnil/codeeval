def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

#return the array for matchin elements for test bracket
def testRegex(regex,text)

  retArr = []

  for el in testelements
    print el

  end
end

#count pairs, eturn false if no pair

def countPairs()

  return true




end

teste = entrada()
# elements to test
testelements = 
  [["(",")"],
   ["{","}"],
   ["[","]"]]

  # processa a linha:
  teste.each do |linha|
    #test cases:

    testR = /\((.*)\)/
    testS = /\[(.*)\]/
    testC = /\{(.*)\}/

    testRegex(1,1)


  end
