class IpData
  def initialize(raw_data)
    # 6 is the data 1 is ip pair:
    r = /((((\d{1,3}(\.| )){4})){2})(((\w{2})( |$))*)/
    @res_array = r.match(raw_data)
    @data = @res_array[6].split(" ")
    @ip_pair = @res_array[1].split(" ")
  end

  def data; @data end
  def new_source; @ip_pair[0] end
  def new_destination; @ip_pair[1] end
  def old_source; @data.values_at(12..12+3) end
  def old_destination; @data.values_at(16..16+3) end
  def ihl; @data.values_at(0).join.split("")[1] end
  def dechex_ip(ip_d); ip_d.split(".").map(&:to_i).map{ |x| x.to_s(16).rjust(2,"0")}.join(" ") end
  def invertBin(bin,n); 
    #binary conversion number , digits
    inv = (n-1).downto(0).map{ |x| (~bin)[x] }
    inv.join

  end
  def reset_checksum(in_check,cks = ["00","00"]); 
    in_check[10,2] = cks 
    return in_check
  end

  def replace_ip(orig,dest)
    ret_data = @data
    combined_ip = dechex_ip(orig).split(" ") + dechex_ip(dest).split(" ")
    ret_data[12,8] = combined_ip
    ret_data
  end
  def checksum
    # append new ip and reset checksum 
    data =  reset_checksum(replace_ip(self.new_source,self.new_destination))
    dword_arr = split_header(data)
    ret_data = 0
    dword_arr.each do |x|
      ret_data = word_sum(ret_data,x.to_i(16))  
    end
    new_checksum =  invertBin(ret_data.to_i,16).to_i(2).to_s(16)
    cache = dword_arr.join.split("") 
    cache[20,4] = new_checksum 
    cache = cache.join
    new_list = []
    (0..(cache.length - 1)/2).each do |x|

      new_list << cache[x*2] + cache[x*2 + 1]
    end
    new_list.join(" ")
  end
  def word_sum(word1,word2)
    word = word1.to_i + word2.to_i
    # puts word.to_s(16)
    if word.to_s(16).length > 4
      s_word = word.to_s(16).split("")
      s_word.shift
      word = (s_word.join.to_i(16) + 1)
    end
    return word

  end
  #   splits header and return array of hex blocks "0hxxxx"
  def split_header(data)
    len = self.ihl.to_i * 4
    #remember to substitute with changed data array(checksum and new ip)
    header = data[0,len]
    # break header in words
    ret_header = []
    i = header.length/2
    (0..i - 1).each do |x| 
      ret_header << header[x * 2] + header[x * 2 + 1]
    end
    ret_header

  end


end

def entrada(*args)
  File.read(ARGV[0]).split("\n")
end


retorno = ""
teste = entrada()

# processa a linha:

teste.each do |line|

  tmp = IpData.new(line)
  puts tmp.checksum
end
