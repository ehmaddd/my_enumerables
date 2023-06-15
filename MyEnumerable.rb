module MyEnumerable
  public def my_each
    if block_given?
      i = 0
      until i == @list.length do
        yield(@list[i])
        i += 1
      end
    end
    @list
  end

  public def my_all?
    if block_given?
      result = true
      my_each { |i| result = false if yield(i) == false }
      result
    else
    self
    end
  end

  public def my_any?
    if block_given?
      result = false
      my_each { |i| result = true if yield(i) }
      result
    else
    self
    end
  end

  public def my_filter
    if block_given?
      result = []
      my_each { |i| result.push(i) if(yield(i)) }
      result
    else
    self
    end
  end
end
