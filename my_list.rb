require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  attr_accessor :list

  def initialize(*list)
    @list = list
  end

  def each
    index = 0
    while index < @list.length
      yield @list[index]
      index += 1
    end
  end
end
