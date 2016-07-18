require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@inventory = inventories(:one)
  end

  test "serial number can't be repeated" do 
  	Inventory.create(serial: 123456)
  	i = Inventory.new(serial: 123456)
  	assert_not i.valid?
  end

  test "wheelsize must be greater than 0" do
  	@inventory.wheelsize = 0
  	assert_not @inventory.valid?
  end
end
