class Array

  def initialize
    @loop_count = 0
  end

  def alias_each
    while @loop_count < self.size
      value = yield self[@loop_count]
      @loop_count += 1
    end
  end
end

#例
array = Array.new.push(1,2,3,4,5)
array.alias_each do |value|
  p value * 2
end

array = Array.new.push('john', 'bob', 'michal')
array.alias_each do |value|
  p value.upcase
end
