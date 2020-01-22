require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')

class TestDrink < Minitest::Test

  def setup
    @drink1 = Drink.new("Tenents", 3)
  end

  def test_get_name
    assert_equal("Tenents", @drink1.name)
  end

  def test_get_price
    assert_equal(3, @drink1.price)
  end

end
