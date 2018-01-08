def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |linha|
  arr = linha.split(" | ")
  dec = []
  arr.each do |x|
    res = []
    decomp = x.split("")
    # print decomp
    decomp.each_with_index do |x,i|
      if i == 0
        res << x
      else
        # res << res.last.to_i % x.to_i
        if res.last == x
          res << "0"
        else
          res << "1"
        end

      end

    end
     dec << res.join.to_i(2).to_s


  end
puts dec.join(" | ")
end
