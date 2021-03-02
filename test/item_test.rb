require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test

  def test_it_exists
    item1 = Item.new('Chalkware Piggy Bank')

    assert_instance_of Item, item1
  end

  def test_it_has_name
    item1 = Item.new('Chalkware Piggy Bank')

    assert_equal 'Chalkware Piggy Bank', item1.name
  end

end
