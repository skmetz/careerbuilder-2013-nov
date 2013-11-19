class BottlesSong
  def sing
    verses(99, 0)
  end

  def verses(starting, ending = 0)
    (ending..starting).to_a.reverse.map {|n| verse(n) }.join("\n") + "\n"
  end

  def verse(number)
    "#{count(number)} #{containers(number)} of beer on the wall, #{count(number).downcase} #{containers(number)} of beer.\n" +
    action(number) +
    "#{count(number - 1).to_s.downcase} #{containers(number - 1)} of beer on the wall.\n"
  end

  private

  def count(number)
    case number
    when -1
      "99"
    when 0
      "No more"
    when 1
      "1"
    else
      number.to_s
    end
  end

  def containers(number)
    case number
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def action(number)
    case number
    when 0
      "Go to the store and buy some more, "
    else
      "Take #{pronoun(number)} down and pass it around, "
    end
  end

  def pronoun(number)
    case number
    when 1
      "it"
    else
      "one"
    end
  end
end

