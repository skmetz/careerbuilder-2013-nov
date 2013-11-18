# http://en.wikipedia.org/wiki/This_Is_the_House_that_Jack_Built
# For a more consistent formatting, see:
# http://papyr.com/hypertextbooks/grammar/ph_noun.htm
gem 'minitest', '~> 4.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'

class HouseTest < MiniTest::Unit::TestCase
  def song
    @song = ::HouseSong.new
  end

  def teardown
    @song = nil
  end

  def test_house
    expected = "This is the house that Jack built.\n"
    assert_equal expected, song.verse(1)
  end

  def test_malt
    skip
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(2)
  end

  def test_rat
    skip
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(3)
  end

  def test_cat
    skip
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(4)
  end

  def test_dog
    skip
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(5)
  end

  def test_cow
    skip
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(6)
  end

  def test_maiden
    skip
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(7)
  end

  def test_man
    skip
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(8)
  end

  def test_priest
    skip
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(9)
  end

  def test_cock
    skip
    expected = "This is the cock that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(10)
  end

  def test_farmer
    skip
    expected = "This is the farmer sowing his corn that kept the cock that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(11)
  end

  def test_horse_and_hound_and_horn
    skip
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the cock that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, song.verse(12)
  end

  def test_multiple_verses
    skip
    expected = ""
    expected << "This is the house that Jack built.\n\n"
    expected << "This is the malt that lay in the house that Jack built.\n\n"
    expected << "This is the rat that ate the malt that lay in the house that Jack built.\n\n"

    assert_equal expected, song.verses(1, 3)
  end

  def test_the_whole_song
    skip
    assert_equal song.verses(1, 12), song.sing
  end
end

