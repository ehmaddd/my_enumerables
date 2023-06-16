module MyEnumerable
  def my_each
    if block_given?
      i = 0
      while i < length
        yield(self[i])
        i += 1
      end
      self
    else
      to_enum(:my_each)
    end
  end

  def my_all?
