class WordParser
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def printed_anagrams
    individual_anagrams.map do |individual_anagram|
      puts individual_anagram
    end
  end

  private

  def sorted_words
    words.group_by do |word|
      word.chars.sort
    end
  end

  def grouped_words
    sorted_words.values
  end

  def anagrams
    grouped_words.keep_if do |grouped_word|
      grouped_word.length >= 2
    end
  end

  def joined_anagrams
    anagrams.join(' ')
  end

  def individual_anagrams
    joined_anagrams.split
  end

end
