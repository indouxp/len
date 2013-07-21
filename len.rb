# coding:utf-8
class Len
  attr_reader :size
  def initialize(str)
    @str = str.to_s
    @size = 0
    get_sizes
  end
  def get_sizes
    @str.scan(/./) do |i|
      if(/[ -~｡-ﾟ]/ =~ i) # 半角
        @size += 1
      else
        @size += 2
      end
    end
  end
end
