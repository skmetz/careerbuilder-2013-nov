gem 'minitest', '~> 4.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/hello.rb'

class HelloTest < MiniTest::Unit::TestCase

  def test_say_hello
    assert_equal "Hello, Alice!", Hello.new("Alice").greet
  end

end
