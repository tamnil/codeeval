def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

def expressions(flow)

  oper = []
  val =[]
  rev_flow = flow.reverse
  rev_flow.each do |x|
    if x == "+" || x == "*" || x == "/"
      oper << x
    else 
      val << x.to_f
    end
  end
  return process(oper,val)
end

def process(oper, val)
  oper.each do |x|
    case x 
    when "+"
      val << (val.pop + val.pop).to_f
    when "/"
      val << (val.pop / val.pop).to_f
    when "*"
      val << (val.pop * val.pop).to_f

    end

  end
  return val[0].round
end

teste = entrada()
# processa a linha:

teste.each do |line|
  puts expressions(line.split(" "))

end
