
def entrada(*args)
  File.read(ARGV[0]).split("\n")
end

teste = entrada()
# processa a linha:
teste.each do |line|
  ret =[] 
  countries = line.split(" | ").map(&:split)

  teams = line.gsub("| ","").split(" ").uniq.sort()
  # puts teams
  results = {}
  teams.each do |team|
    results[team] = [] 
    countries.each_with_index do |country,i|
      if country.count(team) > 0 && country != nil && i != nil
        results[team] += [(i+1).to_s]
      end
    end

  end
  sorted_res =  Hash[results.sort{|x,y| x[0].to_i <=> y[0].to_i}]
  sorted_res.each do |x|
    # print x[0]+":"
    # print x[1].join(",")
    # print "; "
    ret << "#{x[0]}:#{x[1].sort.join(',')};"
  end
  puts ret.join(" ")
end
