module MyEnumerable
  def all?
    @flag = true
    each do |e|
      @flag = if @flag && (yield e)
                true
              else
                false
              end
    end
    @flag
  end

  def any?
    @flag = false
    each do |e|
      @flag = true if yield e
    end
    @flag
  end

  def filter
    @return_list = []

    each do |e|
      @return_list << e if yield e
    end

    @return_list
  end
end
