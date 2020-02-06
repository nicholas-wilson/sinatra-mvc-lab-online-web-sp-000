class PigLatinizer
  attr_accessor :words

  def initialize(text)
    @words = text.split(' ')
  end

  def turn_to_pig_latin
    latin_words = []
    @words.each do |word|
      letters = word.split('')
    end
  end

  def self.call

    # return pig latinized text
  end
end
