require './lib/beer_verse'

class BottlesSong
  def sing
    verses(99, 0)
  end

  def verses(starting, ending = 0)
    starting.downto(ending).map { |n| verse(n) }.join("\n") + "\n"
  end

  def verse(starting_bottle_count)
    number = starting_bottle_count.to_bottlenum
    "#{number} of beer on the wall, #{number.to_s.downcase} of beer.\n" +
        number.action + ", #{number.next.to_s.downcase} of beer on the wall.\n"
  end
end