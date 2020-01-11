class Foo
  def initialize(foo)
    @foo = foo
  end

  def hoge
    @foo
  end
end

foo = Foo.new('keisuke')
p foo.hoge

bar = Foo.new('manami')
p 'conflict'
