# Task about sequence:
# 1, 11, 21, 1211, 111221, 312211
# meaning:
# each value describes previous value in "word" style:
# 1, one(1) 1, two(2) 1, one(1) 2 one(1) 1, etc...

require 'pry'

class AwesomeSequence
  def initialize(count)
    @current_member = 1
    fill_sequence(count)
  end

  private

  def fill_sequence(count)
    count.times do
      p(@current_member = str_chunk.join(''))
    end
  end

  def str_chunk
    string_to_array(@current_member).chunk{|elt| elt}.map do |key, ary|
      [
        ary.size, 
        key
      ]
    end
  end

  def string_to_array(str)
    str.to_s.split('')
  end
end

AwesomeSequence.new(6)