require './word_parser'

class AnagramImporter
  attr_reader :data

  def initialize
    @data = File.open('/usr/share/dict/words') do |file|
      file.read
    end
  end

  def words
    WordParser.new(lines)
  end

  private

  def lines
    data.lines
  end
end
