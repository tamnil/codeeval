def entrada(*args)
  File.read(ARGV[0]).split("\n")
end
require 'prime'

teste = entrada()
# processa a linha:
teste.each do |linha|
  arr = linha.split(",").map(&:to_f)

  xlA = arr[0]
  xrA = arr[2]
  ytA = arr[1]
  xbA = arr[3]

  xlB = arr[0+4]
  xrB = arr[2+4]
  ytB = arr[1+4]
  xbB = arr[3+4]

  widthA =  arr[2] - arr[0]
  heightA = arr[1] - arr[3]

  widthB =  arr[6] - arr[4]
  heightB = arr[5] - arr[7]

  deltaXl = xlA - xlb
  deltaXr = xrA - xrB

  deltaYt = xtA - ytB
  deltaXb = xbA - xbB

if xlA > xlb
  if 


end
