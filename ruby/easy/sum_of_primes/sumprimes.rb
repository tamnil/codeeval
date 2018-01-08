require 'prime'

primesum = Prime.first(1000).reduce(:+)
puts primesum
