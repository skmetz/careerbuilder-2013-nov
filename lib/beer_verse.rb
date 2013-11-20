class StupidNameThatICannotBearToKeep
  attr_reader :starting_bottle_count

  def initialize(starting_bottle_count)
    @starting_bottle_count = starting_bottle_count
  end

  def count
    case starting_bottle_count
    when -1
      "99"
    when 0
      "No more"
    when 1
      "1"
    else
      starting_bottle_count
    end
  end

  def containers
    case starting_bottle_count
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def action
    "Take #{pronoun} down and pass it around, "
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

class StupidNameThatICannotBearToKeep0 < StupidNameThatICannotBearToKeep
  def action
    "Go to the store and buy some more, "
  end
end

class BottlesOfBeerVerse
  attr_reader :starting_bottle_count

  def initialize(bottle_count)
    @starting_bottle_count = bottle_count
  end

  def to_s
    starting_count      = count(starting_bottle_count)
    starting_containers = containers(starting_bottle_count)
    next_bottle_count   = starting_bottle_count - 1

    "#{starting_count} #{starting_containers} of beer on the wall, #{starting_count.to_s.downcase} #{starting_containers} of beer.\n" +
      action + "#{count(next_bottle_count).to_s.downcase} #{containers(next_bottle_count)} of beer on the wall.\n"
  end

  private

  def count(bottle_count)
    StupidNameThatICannotBearToKeep.new(bottle_count).count
  end

  def containers(bottle_count)
    StupidNameThatICannotBearToKeep.new(bottle_count).containers
  end

  def action
    if starting_bottle_count == 0
      StupidNameThatICannotBearToKeep0.new(starting_bottle_count).action
    else
      StupidNameThatICannotBearToKeep.new(starting_bottle_count).action
    end
  end
end
