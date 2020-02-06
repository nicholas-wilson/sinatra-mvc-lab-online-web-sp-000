class PigLatinizer
  attr_accessor :words

  def initialize(text)
    @words = text.split(' ')
  end

  def turn_to_pig_latin
    latin_words = []
    @words.each do |word|
      pig_word = ''
      letters = word.split('')
      if letter == 'a' || letter == 'e' || letter == 'o' || letter == 'i' || letter == 'u'

      else
        endtag = 'ay'
        letters.each do |letter|

        end
      end
    end
  end

  def self.call

    # return pig latinized text
  end
end
