require './word_importer'
require './word_parser'
require './anagram_formatter'

module AnagramController

  def self.print_anagrams
    importer = WordImporter.new
    word_list = WordParser.new(importer.words)
    AnagramFormatter.print(word_list.anagrams)
    nil
  end

end
