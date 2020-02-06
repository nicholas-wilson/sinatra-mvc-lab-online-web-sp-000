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
        split_point = word.index(/[aeiouAEIOU]/)
        consonant_tag = word.slice(0, split_point + 1)
        rest_of_word = word.slice(split_point, word.size)
        pig_word = rest_of_word + consonant_tag + 'ay'
      end
      latin_string += ' ' + pig_word
    end
    latin_string
  end
end
