class DigitStatistics
  def initialize(m,n)
    @m = m
    @n = n
    @ret_arr = []
  end

  def lastdigit(num)
    @num = num.to_s.split("").last
    return @num.to_i
  end

  def show
    #get the multiplication:
    @current = @m
    @ret_arr = {}
    #@ret_arr << lastdigit(@current)
    @ret_arr["0"] = 0
    @ret_arr["1"] = 0
    @ret_arr["2"] = 0
    @ret_arr["3"] = 0
    @ret_arr["4"] = 0
    @ret_arr["5"] = 0
    @ret_arr["6"] = 0
    @ret_arr["7"] = 0
    @ret_arr["8"] = 0
    @ret_arr["9"] = 0
    
    @seq = []
    (1..4).each do |x|
      @seq << @current
      @current = lastdigit(@current.to_i * @m).to_i
      @ret_arr[@current.to_s] += 1
    end
    
    @mult = @n/4
    @mod = @n % 4
    
    @ret_arr.each_pair do |x,i|
      @ret_arr[x] *= @mult
    end
    
    (0..@mod - 1).each do |x|
      @ret_arr[@seq[x].to_s] += 1 
    end
    
    format_output(@ret_arr)
  end

  def format_output(arg)
    @ret = arg
    puts "0: #{@ret['0']}, 1: #{@ret['1']}, 2: #{@ret['2']}, 3: #{@ret['3']}, 4: #{@ret['4']}, 5: #{@ret['5']}, 6: #{@ret['6']}, 7: #{@ret['7']}, 8: #{@ret['8']}, 9: #{@ret['9']}"
  end

end

def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

retorno = ""
teste = entrada()

# processa a linha:

teste.each do |line|
  m = line.split(" ")[0].to_i
  n = line.split(" ")[1].to_i
  x = DigitStatistics.new(m,n)
  x.show

end
