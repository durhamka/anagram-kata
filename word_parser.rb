class WordParser
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def anagrams
    grouped_words.keep_if do |grouped_word|
      grouped_word.length >= anagram_length
    end
  end

  private

  def sorted_words
    words.group_by do |word|
      word.chars.sort
    end
  end

  def anagram_length
    2
  end

  def grouped_words
    sorted_words.values
  end
end
