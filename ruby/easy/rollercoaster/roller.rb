
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  text = line.split("")
  uppercase = true

  text.map! do  |x|
    if  /[A-Za-z]/.match(x) != nil
      if uppercase
        x = x.upcase
      else
        x = x.downcase
      end

      uppercase = !uppercase
    end
    x
  end
  puts text.join

end
