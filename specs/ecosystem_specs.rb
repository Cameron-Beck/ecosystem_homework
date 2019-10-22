require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../bear.rb")
require_relative ("../fish.rb")
require_relative ("../river.rb")




class EcosystemTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Winston")
    @fish2 = Fish.new("Jack")
    @fish3 = Fish.new("Victor")

    @river = River.new("Nile", [])

    @bear = Bear.new("Yogi", "brown", [])

  end

  def test_count_fish_in_river()
    assert_equal(2, @river.count_fish)
  end

  def test_roar
    assert_equal("Rooaaarrrr", @bear.roar)
  end

  def test_remove_fish
    @river.loose_fish
    assert_equal(1, @river.count_fish)
  end

  def test_eat_fish
    @river.loose_fish
    @bear.eat_fish
    assert_equal(1, @bear.stomoch.length)
    assert_equal(1, @river.count_fish)
    assert_equal(1, @bear.food_count)
  end
end
