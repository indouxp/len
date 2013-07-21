# coding:utf-8
require "./len"

describe Len do
  it 'should empty string' do
    str = Len.new('')
    str.size.should == 0
  end
  it 'should ascii string' do
    str = Len.new('AAAAA')
    str.size.should == 5
  end
  it 'should KANJI string' do
    str = Len.new('うへ')
    str.size.should == 4
  end
  it 'should mix string' do
    str = Len.new('うaへkk')
    str.size.should == 7
  end
  it 'should mix string' do
    str = Len.new('kうaへ')
    str.size.should == 6
  end
  it 'shuld numeric' do
    str = Len.new(3)
    str.size.should == 1
  end
  it 'shuld empty array 2' do
    str = Len.new([])
    str.size.should == 2
  end
  it 'shuld array 9' do
    str = Len.new([a, b, c])
    str.size.should == 9
  end
  it 'shuld empty hash 2' do
    str = Len.new({})
    str.size.should == 2
  end
  it 'shuld empty hash 26' do
    str = Len.new({"test" => 3, 5 => "test"})
    str.size.should == 26
  end

end
