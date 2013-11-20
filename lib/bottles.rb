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

  def verse(starting_bottle_count)
    @verse_class.new(strategy(starting_bottle_count)).to_s
  end

  def strategy(starting_bottle_count)
    begin
      Object.const_get("VerseStrategy#{starting_bottle_count}")
    rescue
      VerseStrategy
    end.new(starting_bottle_count)
  end
end
