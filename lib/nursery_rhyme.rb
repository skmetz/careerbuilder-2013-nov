class Character
  attr_reader :name, :action
  def initialize(name, action)
    @name, @action = name, action
  end
end

class NurseryRhyme
  def recite_everything
    (0..11).map do |i|
      line(i)
    end.join("\n")
  end

  def line(i)
    opening + body(i) + ending
  end

  private

  def opening
    "This is "
  end

  def ending
    "the house that Jack built.\n"
  end

  def data
    [
      ['malt', 'lay in'],
      ['rat', 'ate'],
      ['cat', 'killed'],
      ['dog', 'worried'],
      ['cow with the crumpled horn', 'tossed'],
      ['maiden all forlorn', 'milked'],
      ['man all tattered and torn', 'kissed'],
      ['priest all shaven and shorn', 'married'],
      ['cock that crowed in the morn', 'woke'],
      ['farmer sowing his corn', 'kept'],
      ['horse and the hound and the horn', 'belonged to'],
    ]
  end

  def chain(i)
    data[0...i].reverse.map do |name, action|
      Character.new(name, action)
    end
  end

  def body(i)
    return "" if i == 0

    chain(i).map do |character|
      "the %s that %s " % [character.name, character.action]
    end.join('')
  end
end
