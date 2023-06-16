require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def print_list
    print @list
  end
end

list = MyList.new([1, 2, 3, 4, 5])

puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })

puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })