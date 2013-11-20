class VerseStrategy
  attr_reader :starting_bottle_count

  def initialize(starting_bottle_count)
    @starting_bottle_count = starting_bottle_count
  end

  def starting_count
    starting_bottle_count
  end

  def starting_container
    "bottles"
  end

  def action
    "Take one down and pass it around, "
  end

  def ending_count
    starting_bottle_count - 1
  end

  def ending_container
    "bottles"
  end
end

class VerseStrategy0 < VerseStrategy
  def starting_count
    "No more"
  end

  def action
    "Go to the store and buy some more, "
  end

  def ending_count
    "99"
  end
end

class VerseStrategy1 < VerseStrategy
  def starting_count
    "1"
  end

  def starting_container
    "bottle"
  end

  def action
    "Take it down and pass it around, "
  end

  def ending_count
    "no more"
  end
end

class VerseStrategy2 < VerseStrategy
  def ending_container
    "bottle"
  end
end

class BottlesOfBeerVerse
  attr_reader :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def to_s
    "#{strategy.starting_count} #{strategy.starting_container} of beer on the wall, #{strategy.starting_count.to_s.downcase} #{strategy.starting_container} of beer.\n" +
        strategy.action + "#{strategy.ending_count.to_s.downcase} #{strategy.ending_container} of beer on the wall.\n"
  end
end
