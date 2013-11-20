class BottlesOfBeerVerse
  attr_reader :starting_bottle_count
  
  def initialize(bottle_count)
    @starting_bottle_count = bottle_count
  end    

  def to_s
    starting_count      = count(starting_bottle_count)
    starting_containers = containers(starting_bottle_count)
    next_bottle_count   = starting_bottle_count - 1

    "#{starting_count} #{starting_containers} of beer on the wall, #{starting_count.downcase} #{starting_containers} of beer.\n" +
      action + "#{count(next_bottle_count).to_s.downcase} #{containers(next_bottle_count)} of beer on the wall.\n"
  end

  private

  def count(bottle_count)
    case bottle_count
    when -1
      "99"
    when 0
      "No more"
    when 1
      "1"
    else
      bottle_count
    end
  end

  def containers(bottle_count)
    case bottle_count
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def action
    case starting_bottle_count
    when 0
      "Go to the store and buy some more, "
    else
      "Take #{pronoun} down and pass it around, "
    end
  end

  def pronoun
    case starting_bottle_count
    when 1
      "it"
    else
      "one"
    end
  end

end
