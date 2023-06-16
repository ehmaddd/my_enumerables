module MyEnumerable
  def my_all?
    if block_given?
      result = true
      my_each { |i| result = false if yield(i) == false }
      result
    else
      self
    end
  end

  def my_any?
    if block_given?
      result = false
      my_each { |i| result = true if yield(i) }
      result
    else
      self
    end
  end

  def my_filter
    if block_given?
      result = []
      my_each { |i| result.push(i) if yield(i) }
      result
    else
      self
    end
  end
end
