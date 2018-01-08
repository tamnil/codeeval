if "aa".unpack('S')[0] > "bb".unpack('S*')[0]
  puts "BigEndian"
else
  puts "LittleEndian"
end
