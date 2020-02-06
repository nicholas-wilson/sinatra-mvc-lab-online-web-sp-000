class PigLatinizer
  attr_accessor :words

  def initialize(text)
    @words = text.split(' ')
  end

  def turn_to_pig_latin
    latin_string = ''
    @words.each do |word|
      pig_word = ''
      letters = word.split('')
      if letters[0] == 'a' || letters[0] == 'e' || letters[0] == 'o' || letters[0] == 'i' || letters[0] == 'u'
        pig_word = word + 'way'
      else
        consonant_tag = ''
        rest_of_word = ''
        stop_at = letters.index(/[aeiou]/)
        puts letters
        counter = 0
        while counter < stop_at do
          consonant_tag += letters[counter]
          counter += 1
        end
        counter -= 1
        counter.times do
          letters[0].delete
        end
      end
      latin_string += ' ' + word
    end
    latin_string
  end
end
