class WordImporter
  attr_reader :data

  def initialize
    @data = File.open('/usr/share/dict/words') do |file|
      file.read
    end
  end

  def words
    data.lines.map(&:chomp)
  end
end
