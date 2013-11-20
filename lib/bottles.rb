require './lib/beer_verse'

class BottlesSong

  def initialize(verse_class = BottlesOfBeerVerse)
    @verse_class = verse_class
  end

  def sing
    verses(99, 0)
  end

  def verses(starting, ending = 0)
    starting.downto(ending).map { |n| verse(n) }.join("\n") + "\n"
  end

  def verse(number)
    @verse_class.new(number).to_s
  end

end
