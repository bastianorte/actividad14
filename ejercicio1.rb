a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#1"
a = a.map {|i| i + 1 }
puts "#{a}"

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#2"

a = a.map {|i| i.to_f}
puts "#{a}"

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#3"

a = a.map {|i| i.to_s}
puts "#{a}"

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#4"

a = a.reject {|i| i>=5}
puts "#{a}"

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#5"

a = a.select {|i| i>5}
puts "#{a}"

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#6"

a.inject(0) {|sum,i| sum + i}

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#7"

a = a.group_by {|i| i.even?}
puts a

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts "#8"

a = a.group_by {|i| i>6}
puts a
