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
end
