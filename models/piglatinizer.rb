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
        pig_word = word + 'way'
      else
        consonant_tag = ''
        rest_of_word = ''
        stop_at = letters.index(/[aeiou]/)
        counter = 0
        while counter < stop_at do
          consonant_tag += letters[counter]
          counter += 1
        end
        counter.times do
          letters[0].delete
        end
      end

    end
    latin_words
  end
end
