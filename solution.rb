require_relative 'my_list'

list = MyList.new(1, 5, 3, 4)

puts(list.all? { |e| e < 5 })