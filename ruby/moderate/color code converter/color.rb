
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
def color_convert(val,type)
  case type 
  when "hsl"
    return hsl(val)
  when "cmyk"
    return cmyk(val)
  when "hsv"
    return hsv(val)
  when "hex"
    return hex(val)
  end


end



def get_type(val)

  regex_cmyk = /^\((.*)\)/
  regex_hsl = /HSL\((.*)\)/
  regex_hsv = /HSV\((.*)\)/
  regex_hex = /#(.*)/


  if regex_cmyk.match(val)
    return cmyk(regex_cmyk.match(val)[1].split(","))
  elsif regex_hsl.match(val)
    return hsl( regex_hsl.match(val)[1].split(","))
  elsif   regex_hsv.match(val)
    return hsv( regex_hsv.match(val)[1].split(","))
  else 
    return hex( regex_hex.match(val)[1].split(""))
  end


end

def cmyk(arr)
  c,y,m,k = arr
  r = (255 * ( 1 - c.to_f ) * (1 - k.to_f)).round
  g = (255 * ( 1 - m.to_f ) * (1 - k.to_f)).round
  b = (255 * ( 1 - y.to_f ) * (1 - k.to_f)).round
  return "RGB(#{r},#{b},#{g})"
end


def hsl(arr)
  h,s,l = arr.map(&:to_f)
  s = s/100
  l = l/100
  c = (1 - (2 * l - 1 ).abs) * s
  x = c * (1 - ((( h / 60 ) % 2) - 1).abs)
  m = l - c / 2
  temp_arr =[]
  ret_arr = []
  if   h < 60
    temp_arr = [c,x,0]
  elsif  h < 120
    temp_arr = [x,c,0]
  elsif h < 180
    temp_arr = [0,c,x]
  elsif h < 240
    temp_arr = [0,x,c]
  elsif h < 300
    temp_arr = [x,0,c]
  else  
    temp_arr = [c,0,x]
  end
  temp_arr.each_with_index do |y,i|
    ret_arr[i] = ((y + m) * 255).round
  end
  r , g , b = ret_arr
  return "RGB(#{r},#{g},#{b})"
end

def hsv(arr)
  h,s,v = arr.map(&:to_f)
  s = s/100
  v = v/100

  c =  v * s
  x = c * (1 - ((( h / 60 ) % 2) - 1).abs)
  m = v - c 
  temp_arr =[]
  ret_arr = []
  if   h < 60
    temp_arr = [c,x,0]
  elsif  h < 120
    temp_arr = [x,c,0]
  elsif h < 180
    temp_arr = [0,c,x]
  elsif h < 240
    temp_arr = [0,x,c]
  elsif h < 300
    temp_arr = [x,0,c]
  else  
    temp_arr = [c,0,x]
  end
  temp_arr.each_with_index do |y,i|
    ret_arr[i] = ((y + m) * 255).round
  end
  r , g , b = ret_arr
  return "RGB(#{r},#{g},#{b})"
end

def hex(val)
  temp_arr = []
  (0..2).each do |x|
    temp_arr << val[x * 2] + val[x * 2 + 1]

  end

  r,g,b = temp_arr
  r = r.to_i(16)
  g = g.to_i(16)
  b = b.to_i(16)
  return "RGB(#{r},#{g},#{b})"

end

# processa a linha:
teste.each do |line|
  puts get_type( line)

end
