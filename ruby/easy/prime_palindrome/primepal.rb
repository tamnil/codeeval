require 'prime'

pali=""

Prime.each(1000) do |n|
  if n.to_s == n.to_s.reverse
    
    pali = n
  end
end

puts pali 
