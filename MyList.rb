require_relative "MyEnumerable.rb"

class MyList
  include MyEnumerable
  @list
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts list.my_all? { |e| e < 5 }
puts list.my_all? { |e| e > 5 }

# Test #any?
puts list.my_any? { |e| e == 2 }
puts list.my_any? { |e| e == 5 }

# Test filter
print list.my_filter { |e| e.even? }
