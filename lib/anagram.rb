class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(array)
    modified_array = array.filter.with_index { |element, index|
      if element.split("").sort == @word.split("").sort
        array[index]
      end
    }
    modified_array
  end
end

