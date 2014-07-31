module GschoolEnumerable

  def g_each

    for i in self
      yield(i)
    end
    return self
  end

  def g_select
    ary = []
    self.g_each do |item|
      if yield(item)
        ary << item
      end
    end
    ary
  end

  def g_reject
    ary = []
    self.g_each do |item|
      ary << item unless yield(item)
    end
    ary
  end

  def g_map
    ary = []
    self.g_each do |item|
      ary << yield(item)
    end
    ary
  end

  def g_find
    self.g_each do |item|
      if yield(item)
       return item
      end
    end
    nil
  end

  def g_select!
    self.g_each do |item|
      unless yield(item)
        self.delete(item)
      end
    end
  end

end
