require 'delegate'

class Fixnum
  def to_bottlenum
    if self == 1
      BottleNumber1.new(self)
    elsif self == 0
      BottleNumber0.new(self)
    else
      BottleNumber.new(self)
    end
  end
end

class BottleNumber < SimpleDelegator
  def name
    __getobj__.to_s
  end

  def to_s
    name + " " + container
  end

  def action
    "Take one down and pass it around"
  end

  def container
    "bottles"
  end

  def next
    (__getobj__-1).to_bottlenum
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def action
    "Take it down and pass it around"
  end
end

class BottleNumber0 < BottleNumber
  def name
    "No more"
  end

  def action
    "Go to the store and buy some more"
  end

  def container
    "bottles"
  end

  def next
    99.to_bottlenum
  end
end