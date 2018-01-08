
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  textArr = line.split("")
  if textArr.length > 55 

    textArr = textArr.first(40)

    while textArr.last == " "
      textArr.pop()

    end
    textArr = (textArr.join("").sub(/\s\w*$/,"") + "... <Read More>").split("")

  end

puts textArr.join()
end
