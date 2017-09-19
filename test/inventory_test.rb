require "minitest/autorun"
require "minitest/pride"
require './lib/inventory'

class InventoryTest < Minitest::Test

  def setup
    @inventory1 = Inventory.new(Date.new(2017, 9, 18))
  end


  def test_it_exists
    assert_instance_of Inventory, @inventory1
  end

  def test_date_returns_date_object
    assert_instance_of Date, @inventory1.date
  end

  def test_items_starts_as_empty_hash
    inventory = Inventory.new(Date.new(2017, 9, 18))
    assert_equal ({}), inventory.items
  end

  def test_it_can_record_items_and_store_in_items_hash
    @inventory1.record_item({"shirt" => {"quantity" => 50, "cost" => 15}})

    assert_equal ({"shirt" => {"quantity" => 50, "cost" => 15}}), @inventory1.items
  end




end
