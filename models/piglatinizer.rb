class PigLatinizer
  attr_accessor :words

  def initialize(text)
    @words = text.split(' ')
  end

  def turn_to_pig_latin
    latin_string = ''
    @words.each do |word|
      pig_word = ''
      # letters = word.split('')
      if word.chr.downcase == 'a' || word.chr.downcase == 'e' || word.chr.downcase == 'o' || word.chr.downcase == 'i' || word.chr.downcase == 'u'
        pig_word = word + 'way'
      else
        stop_at = word.index(/[aeiouAEIOU]/)
        counter = 0
        while counter < stop_at do
          consonant_tag += letters[counter]
          counter += 1
        end
        consonant_tag = word.substr(0, counter - 1)
        rest_of_word = word.substr(counter, word.size - 1)
        pig_word = rest_of_word + consonant_tag + 'ay'
      end
      latin_string += ' ' + pig_word
    end
    latin_string
  end
end
