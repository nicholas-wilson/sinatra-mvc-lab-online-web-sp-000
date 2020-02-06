class PigLatinizer
  attr_accessor :words

  def initialize(text='')
    @words = text.split(' ')
  end

  def piglatinize(text=nil)
    latin_string = ''
    if @words.size == 0
      @words = text.split(' ')
    end
    @words.each do |word|
      pig_word = turn_word(word)
      latin_string += pig_word
    end
    latin_string
  end

  def turn_word(word)
    pig_word = ''
    # letters = word.split('')
    if word.chr.downcase == 'a' || word.chr.downcase == 'e' || word.chr.downcase == 'o' || word.chr.downcase == 'i' || word.chr.downcase == 'u'
      pig_word = word + 'way'
    else
      split_point = word.index(/[aeiouAEIOU]/)
      consonant_tag = word.slice(0, split_point)
      rest_of_word = word.slice(split_point, word.size)
      pig_word = rest_of_word + consonant_tag + 'ay'
    end
    pig_word
  end
end
