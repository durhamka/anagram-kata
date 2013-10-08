class WordParser
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def sorted_words
    word.chars.sort
  end
end
