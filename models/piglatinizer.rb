class PigLatinizer
  attr_accessor :words

  def initialize(text)
    @words = text.split(' ')
  end
end
